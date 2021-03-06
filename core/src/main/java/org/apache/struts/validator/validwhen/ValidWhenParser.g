header {
/*
 * $Id$
 *
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */

package org.apache.struts.validator.validwhen;

import java.math.BigDecimal;
import java.util.Stack;
import org.apache.commons.validator.util.ValidatorUtils;
}

class ValidWhenParser extends Parser;
options {
    k = 6;
    defaultErrorHandler = false;
}

{
    Stack argStack = new Stack();
    Object form;
    int index;
    String value;

    public void setForm(Object f) { form = f; };
    public void setIndex (int i) { index = i; };
    public void setValue (String v) { value = v; };

    public boolean getResult() {
        return ((Boolean)argStack.peek()).booleanValue();
    }

    private final int LESS_EQUAL = 0;
    private final int LESS_THAN = 1;
    private final int EQUAL = 2;
    private final int GREATER_THAN = 3;
    private final int GREATER_EQUAL = 4;
    private final int NOT_EQUAL = 5;
    private final int AND = 6;
    private final int OR = 7;

    private boolean evaluateComparison (Object v1, Object comparison, Object v2) {
        boolean numCompare = true;

        if ((v1 == null) || (v2 == null)) {
            if (String.class.isInstance(v1)) {
                if (((String) v1).trim().length() == 0) {
                    v1 = null;
                }
            }
            if (String.class.isInstance(v2)) {
                if (((String) v2).trim().length() == 0) {
                    v2 = null;
                }
            }

            switch (((Integer)comparison).intValue()) {
            case LESS_EQUAL:
            case GREATER_THAN:
            case LESS_THAN:
            case GREATER_EQUAL:
                return false;
            case EQUAL:
                return (v1 == v2);
            case NOT_EQUAL:
                return (v1 != v2);
            }
        }

        if ( (Integer.class.isInstance(v1) ||
                BigDecimal.class.isInstance(v1) ||
                String.class.isInstance(v1)) &&
             (Integer.class.isInstance(v2) ||
                BigDecimal.class.isInstance(v2) ||
                String.class.isInstance(v2))) {
            numCompare = true;
        } else {
            numCompare = false;
        }

        if (numCompare) {
            try {
                BigDecimal v1i = null;
                BigDecimal v2i = null;

                if (BigDecimal.class.isInstance(v1)) {
                    v1i = (BigDecimal)v1;
                } else if (Integer.class.isInstance(v1)) {
                    v1i = new BigDecimal(v1.toString());
                } else {
                    v1i = new BigDecimal((String) v1);
                }

                if (BigDecimal.class.isInstance(v2)) {
                    v2i = (BigDecimal)v2;
                } else if (Integer.class.isInstance(v2)) {
                    v2i = new BigDecimal(v2.toString());
                } else {
                    v2i = new BigDecimal((String) v2);
                }

                int res = v1i.compareTo(v2i);
                switch (((Integer)comparison).intValue()) {
                case LESS_EQUAL:
                    return (res <= 0);
                case LESS_THAN:
                    return (res < 0);
                case EQUAL:
                    return (res == 0);
                case GREATER_THAN:
                    return (res > 0);
                case GREATER_EQUAL:
                    return (res >= 0);
                case NOT_EQUAL:
                    return (res != 0);
                }
            } catch (NumberFormatException ex) {};
        }

        String v1s = "";
        String v2s = "";

        if (String.class.isInstance(v1)) {
            v1s = (String) v1;
        } else {
            v1s = v1.toString();
        }

        if (String.class.isInstance(v2)) {
            v2s = (String) v2;
        } else {
            v2s = v2.toString();
        }

        int res = v1s.compareTo(v2s);
        switch (((Integer)comparison).intValue()) {
        case LESS_EQUAL:
            return (res <= 0);
        case LESS_THAN:
            return (res < 0);
        case EQUAL:
            return (res == 0);
        case GREATER_THAN:
            return (res > 0);
        case GREATER_EQUAL:
            return (res >= 0);
        case NOT_EQUAL:
            return (res != 0);
        }
        return true;
    }
}

decimal:
    d:DECIMAL_LITERAL
        { argStack.push(new BigDecimal(d.getText())); } ;

integer :
    d:DEC_INT_LITERAL
        { argStack.push(Integer.decode(d.getText())); } |
    h:HEX_INT_LITERAL
        { argStack.push(Integer.decode(h.getText())); } |
    o:OCTAL_INT_LITERAL
        { argStack.push(Integer.decode(o.getText())); } ;

number : decimal | integer ;

string :
    str:STRING_LITERAL
        { argStack.push(str.getText().substring(1, str.getText().length()-1)); };

identifier :
    str:IDENTIFIER
        { argStack.push(str.getText()); } ;

field :
    identifier LBRACKET RBRACKET identifier {
        Object i2 = argStack.pop();
        Object i1 = argStack.pop();
        argStack.push(ValidatorUtils.getValueAsString(form, i1 + "[" + index + "]" + i2)); } |
    identifier LBRACKET integer RBRACKET identifier {
        Object i5 = argStack.pop();
        Object i4 = argStack.pop();
        Object i3 = argStack.pop();
        argStack.push(ValidatorUtils.getValueAsString(form, i3 + "[" + i4 + "]" + i5)); } |
    identifier LBRACKET integer RBRACKET {
        Object i7 = argStack.pop();
        Object i6 = argStack.pop();
        argStack.push(ValidatorUtils.getValueAsString(form, i6 + "[" + i7 + "]")); } |
    identifier LBRACKET RBRACKET {
        Object i8 = argStack.pop();
        argStack.push(ValidatorUtils.getValueAsString(form, i8 + "[" + index + "]")); } |
    identifier  {
        Object i9 = argStack.pop();
        argStack.push(ValidatorUtils.getValueAsString(form, (String)i9)); };

literal : number | string | "null" { argStack.push(null);} | THIS {argStack.push(value);};

value : field | literal ;

expression : expr EOF;

expr: LPAREN comparisonExpression RPAREN | LPAREN joinedExpression RPAREN;

joinedExpression : expr join expr {
    Boolean v1 = (Boolean) argStack.pop();
    Integer join = (Integer) argStack.pop();
    Boolean v2 = (Boolean) argStack.pop();
    if (join.intValue() == AND) {
        argStack.push(new Boolean(v1.booleanValue() && v2.booleanValue()));
    } else {
        argStack.push(new Boolean(v1.booleanValue() || v2.booleanValue()));
    }
};

join :
    ANDSIGN
        { argStack.push(new Integer(AND)); } |
    ORSIGN
        { argStack.push(new Integer(OR)); };

comparison :
    EQUALSIGN
        { argStack.push(new Integer(EQUAL)); } |
    GREATERTHANSIGN
        { argStack.push(new Integer(GREATER_THAN)); } |
    GREATEREQUALSIGN
        { argStack.push(new Integer(GREATER_EQUAL)); } |
    LESSTHANSIGN
        { argStack.push(new Integer(LESS_THAN)); } |
    LESSEQUALSIGN
        { argStack.push(new Integer(LESS_EQUAL)); } |
    NOTEQUALSIGN
        { argStack.push(new Integer(NOT_EQUAL)); } ;

comparisonExpression :
    value comparison value {
       Object v2 = argStack.pop();
       Object comp = argStack.pop();
       Object v1 = argStack.pop();
       argStack.push(new Boolean(evaluateComparison(v1, comp, v2)));
    };

class ValidWhenLexer extends Lexer;

options {
    k=2;
    caseSensitive=false;
    defaultErrorHandler=false;
    charVocabulary='\40'..'\176';
}

tokens {
    ANDSIGN="and";
    ORSIGN="or";
}

WS :
    ( ' ' | '\t' | '\n' | '\r' )+
        { $setType(Token.SKIP); } ;

DECIMAL_LITERAL :
    (('-')? ('0'..'9')+ ('.')) => (('-')? ('0'..'9')+ ('.') ('0'..'9')+) |
    ('0') => ('0' ('0'..'7')*)
        { $setType(OCTAL_INT_LITERAL); } |
    ('0' 'x') => ('0' 'x'  ('0'..'9' | 'a'..'f')+)
        { $setType(HEX_INT_LITERAL); } |
    (('-')? ('1'..'9') ('0'..'9')*)
        { $setType(DEC_INT_LITERAL); } ;

STRING_LITERAL : ('\'' (~'\'')+ '\'') | ('\"' (~'\"')+ '\"') ;

LBRACKET : '[' ;

RBRACKET : ']' ;

LPAREN : '(' ;

RPAREN : ')' ;

THIS : "*this*" ;

IDENTIFIER : ( 'a'..'z' | '.' | '_') ( 'a'..'z' | '0'..'9' | '.' | '_')+ ;

EQUALSIGN : '=' '=' ;

NOTEQUALSIGN : '!' '=' ;

LESSTHANSIGN : '<';

GREATERTHANSIGN : '>';

LESSEQUALSIGN : '<' '=';

GREATEREQUALSIGN : '>' '=';