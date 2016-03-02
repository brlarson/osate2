package org.osate.alisa.common.ui.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.Lexer;


import org.antlr.runtime.*;
import java.util.Stack;
import java.util.List;
import java.util.ArrayList;

@SuppressWarnings("all")
public class InternalCommonLexer extends Lexer {
    public static final int T__50=50;
    public static final int RULE_INT_EXPONENT=10;
    public static final int T__19=19;
    public static final int T__59=59;
    public static final int T__17=17;
    public static final int T__18=18;
    public static final int T__55=55;
    public static final int T__56=56;
    public static final int T__57=57;
    public static final int T__58=58;
    public static final int T__51=51;
    public static final int T__52=52;
    public static final int RULE_BASED_INTEGER=12;
    public static final int T__53=53;
    public static final int T__54=54;
    public static final int T__60=60;
    public static final int T__61=61;
    public static final int RULE_ID=7;
    public static final int RULE_DIGIT=8;
    public static final int T__26=26;
    public static final int T__27=27;
    public static final int T__28=28;
    public static final int RULE_INT=4;
    public static final int T__29=29;
    public static final int T__22=22;
    public static final int RULE_ML_COMMENT=13;
    public static final int T__23=23;
    public static final int T__24=24;
    public static final int T__25=25;
    public static final int T__62=62;
    public static final int T__63=63;
    public static final int T__20=20;
    public static final int T__21=21;
    public static final int RULE_REAL_LIT=5;
    public static final int RULE_STRING=6;
    public static final int RULE_SL_COMMENT=14;
    public static final int T__37=37;
    public static final int T__38=38;
    public static final int T__39=39;
    public static final int T__33=33;
    public static final int T__34=34;
    public static final int T__35=35;
    public static final int T__36=36;
    public static final int EOF=-1;
    public static final int T__30=30;
    public static final int T__31=31;
    public static final int T__32=32;
    public static final int RULE_WS=15;
    public static final int RULE_ANY_OTHER=16;
    public static final int RULE_EXPONENT=9;
    public static final int T__48=48;
    public static final int T__49=49;
    public static final int T__44=44;
    public static final int RULE_EXTENDED_DIGIT=11;
    public static final int T__45=45;
    public static final int T__46=46;
    public static final int T__47=47;
    public static final int T__40=40;
    public static final int T__41=41;
    public static final int T__42=42;
    public static final int T__43=43;

    // delegates
    // delegators

    public InternalCommonLexer() {;} 
    public InternalCommonLexer(CharStream input) {
        this(input, new RecognizerSharedState());
    }
    public InternalCommonLexer(CharStream input, RecognizerSharedState state) {
        super(input,state);

    }
    public String getGrammarFileName() { return "../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g"; }

    // $ANTLR start "T__17"
    public final void mT__17() throws RecognitionException {
        try {
            int _type = T__17;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:11:7: ( '||' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:11:9: '||'
            {
            match("||"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__17"

    // $ANTLR start "T__18"
    public final void mT__18() throws RecognitionException {
        try {
            int _type = T__18;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:12:7: ( '&&' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:12:9: '&&'
            {
            match("&&"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__18"

    // $ANTLR start "T__19"
    public final void mT__19() throws RecognitionException {
        try {
            int _type = T__19;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:13:7: ( '==' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:13:9: '=='
            {
            match("=="); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__19"

    // $ANTLR start "T__20"
    public final void mT__20() throws RecognitionException {
        try {
            int _type = T__20;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:14:7: ( '!=' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:14:9: '!='
            {
            match("!="); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__20"

    // $ANTLR start "T__21"
    public final void mT__21() throws RecognitionException {
        try {
            int _type = T__21;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:15:7: ( '>=' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:15:9: '>='
            {
            match(">="); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__21"

    // $ANTLR start "T__22"
    public final void mT__22() throws RecognitionException {
        try {
            int _type = T__22;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:16:7: ( '>' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:16:9: '>'
            {
            match('>'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__22"

    // $ANTLR start "T__23"
    public final void mT__23() throws RecognitionException {
        try {
            int _type = T__23;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:17:7: ( '<' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:17:9: '<'
            {
            match('<'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__23"

    // $ANTLR start "T__24"
    public final void mT__24() throws RecognitionException {
        try {
            int _type = T__24;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:18:7: ( '->' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:18:9: '->'
            {
            match("->"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__24"

    // $ANTLR start "T__25"
    public final void mT__25() throws RecognitionException {
        try {
            int _type = T__25;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:19:7: ( '..<' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:19:9: '..<'
            {
            match("..<"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__25"

    // $ANTLR start "T__26"
    public final void mT__26() throws RecognitionException {
        try {
            int _type = T__26;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:20:7: ( '..' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:20:9: '..'
            {
            match(".."); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__26"

    // $ANTLR start "T__27"
    public final void mT__27() throws RecognitionException {
        try {
            int _type = T__27;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:21:7: ( '=>' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:21:9: '=>'
            {
            match("=>"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__27"

    // $ANTLR start "T__28"
    public final void mT__28() throws RecognitionException {
        try {
            int _type = T__28;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:22:7: ( '<>' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:22:9: '<>'
            {
            match("<>"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__28"

    // $ANTLR start "T__29"
    public final void mT__29() throws RecognitionException {
        try {
            int _type = T__29;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:23:7: ( '?:' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:23:9: '?:'
            {
            match("?:"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__29"

    // $ANTLR start "T__30"
    public final void mT__30() throws RecognitionException {
        try {
            int _type = T__30;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:24:7: ( '+' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:24:9: '+'
            {
            match('+'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__30"

    // $ANTLR start "T__31"
    public final void mT__31() throws RecognitionException {
        try {
            int _type = T__31;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:25:7: ( '-' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:25:9: '-'
            {
            match('-'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__31"

    // $ANTLR start "T__32"
    public final void mT__32() throws RecognitionException {
        try {
            int _type = T__32;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:26:7: ( '*' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:26:9: '*'
            {
            match('*'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__32"

    // $ANTLR start "T__33"
    public final void mT__33() throws RecognitionException {
        try {
            int _type = T__33;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:27:7: ( '**' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:27:9: '**'
            {
            match("**"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__33"

    // $ANTLR start "T__34"
    public final void mT__34() throws RecognitionException {
        try {
            int _type = T__34;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:28:7: ( '/' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:28:9: '/'
            {
            match('/'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__34"

    // $ANTLR start "T__35"
    public final void mT__35() throws RecognitionException {
        try {
            int _type = T__35;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:29:7: ( '%' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:29:9: '%'
            {
            match('%'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__35"

    // $ANTLR start "T__36"
    public final void mT__36() throws RecognitionException {
        try {
            int _type = T__36;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:30:7: ( '!' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:30:9: '!'
            {
            match('!'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__36"

    // $ANTLR start "T__37"
    public final void mT__37() throws RecognitionException {
        try {
            int _type = T__37;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:31:7: ( 'false' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:31:9: 'false'
            {
            match("false"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__37"

    // $ANTLR start "T__38"
    public final void mT__38() throws RecognitionException {
        try {
            int _type = T__38;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:32:7: ( 'tbd' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:32:9: 'tbd'
            {
            match("tbd"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__38"

    // $ANTLR start "T__39"
    public final void mT__39() throws RecognitionException {
        try {
            int _type = T__39;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:33:7: ( 'error' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:33:9: 'error'
            {
            match("error"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__39"

    // $ANTLR start "T__40"
    public final void mT__40() throws RecognitionException {
        try {
            int _type = T__40;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:34:7: ( 'warning' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:34:9: 'warning'
            {
            match("warning"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__40"

    // $ANTLR start "T__41"
    public final void mT__41() throws RecognitionException {
        try {
            int _type = T__41;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:35:7: ( 'info' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:35:9: 'info'
            {
            match("info"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__41"

    // $ANTLR start "T__42"
    public final void mT__42() throws RecognitionException {
        try {
            int _type = T__42;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:36:7: ( 'success' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:36:9: 'success'
            {
            match("success"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__42"

    // $ANTLR start "T__43"
    public final void mT__43() throws RecognitionException {
        try {
            int _type = T__43;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:37:7: ( 'fail' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:37:9: 'fail'
            {
            match("fail"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__43"

    // $ANTLR start "T__44"
    public final void mT__44() throws RecognitionException {
        try {
            int _type = T__44;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:38:7: ( 'description' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:38:9: 'description'
            {
            match("description"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__44"

    // $ANTLR start "T__45"
    public final void mT__45() throws RecognitionException {
        try {
            int _type = T__45;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:39:7: ( 'target' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:39:9: 'target'
            {
            match("target"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__45"

    // $ANTLR start "T__46"
    public final void mT__46() throws RecognitionException {
        try {
            int _type = T__46;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:40:7: ( 'exception' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:40:9: 'exception'
            {
            match("exception"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__46"

    // $ANTLR start "T__47"
    public final void mT__47() throws RecognitionException {
        try {
            int _type = T__47;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:41:7: ( 'diagnosticId' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:41:9: 'diagnosticId'
            {
            match("diagnosticId"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__47"

    // $ANTLR start "T__48"
    public final void mT__48() throws RecognitionException {
        try {
            int _type = T__48;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:42:7: ( '[' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:42:9: '['
            {
            match('['); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__48"

    // $ANTLR start "T__49"
    public final void mT__49() throws RecognitionException {
        try {
            int _type = T__49;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:43:7: ( ']' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:43:9: ']'
            {
            match(']'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__49"

    // $ANTLR start "T__50"
    public final void mT__50() throws RecognitionException {
        try {
            int _type = T__50;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:44:7: ( '#' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:44:9: '#'
            {
            match('#'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__50"

    // $ANTLR start "T__51"
    public final void mT__51() throws RecognitionException {
        try {
            int _type = T__51;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:45:7: ( '@' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:45:9: '@'
            {
            match('@'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__51"

    // $ANTLR start "T__52"
    public final void mT__52() throws RecognitionException {
        try {
            int _type = T__52;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:46:7: ( 'img' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:46:9: 'img'
            {
            match("img"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__52"

    // $ANTLR start "T__53"
    public final void mT__53() throws RecognitionException {
        try {
            int _type = T__53;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:47:7: ( '.' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:47:9: '.'
            {
            match('.'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__53"

    // $ANTLR start "T__54"
    public final void mT__54() throws RecognitionException {
        try {
            int _type = T__54;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:48:7: ( '=' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:48:9: '='
            {
            match('='); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__54"

    // $ANTLR start "T__55"
    public final void mT__55() throws RecognitionException {
        try {
            int _type = T__55;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:49:7: ( '(' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:49:9: '('
            {
            match('('); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__55"

    // $ANTLR start "T__56"
    public final void mT__56() throws RecognitionException {
        try {
            int _type = T__56;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:50:7: ( ')' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:50:9: ')'
            {
            match(')'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__56"

    // $ANTLR start "T__57"
    public final void mT__57() throws RecognitionException {
        try {
            int _type = T__57;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:51:7: ( ',' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:51:9: ','
            {
            match(','); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__57"

    // $ANTLR start "T__58"
    public final void mT__58() throws RecognitionException {
        try {
            int _type = T__58;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:52:7: ( 'this' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:52:9: 'this'
            {
            match("this"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__58"

    // $ANTLR start "T__59"
    public final void mT__59() throws RecognitionException {
        try {
            int _type = T__59;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:53:7: ( '{' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:53:9: '{'
            {
            match('{'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__59"

    // $ANTLR start "T__60"
    public final void mT__60() throws RecognitionException {
        try {
            int _type = T__60;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:54:7: ( '}' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:54:9: '}'
            {
            match('}'); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__60"

    // $ANTLR start "T__61"
    public final void mT__61() throws RecognitionException {
        try {
            int _type = T__61;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:55:7: ( 'null' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:55:9: 'null'
            {
            match("null"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__61"

    // $ANTLR start "T__62"
    public final void mT__62() throws RecognitionException {
        try {
            int _type = T__62;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:56:7: ( '::' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:56:9: '::'
            {
            match("::"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__62"

    // $ANTLR start "T__63"
    public final void mT__63() throws RecognitionException {
        try {
            int _type = T__63;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:57:7: ( 'true' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:57:9: 'true'
            {
            match("true"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "T__63"

    // $ANTLR start "RULE_EXPONENT"
    public final void mRULE_EXPONENT() throws RecognitionException {
        try {
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7373:24: ( ( 'e' | 'E' ) ( '+' | '-' )? ( RULE_DIGIT )+ )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7373:26: ( 'e' | 'E' ) ( '+' | '-' )? ( RULE_DIGIT )+
            {
            if ( input.LA(1)=='E'||input.LA(1)=='e' ) {
                input.consume();

            }
            else {
                MismatchedSetException mse = new MismatchedSetException(null,input);
                recover(mse);
                throw mse;}

            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7373:36: ( '+' | '-' )?
            int alt1=2;
            int LA1_0 = input.LA(1);

            if ( (LA1_0=='+'||LA1_0=='-') ) {
                alt1=1;
            }
            switch (alt1) {
                case 1 :
                    // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:
                    {
                    if ( input.LA(1)=='+'||input.LA(1)=='-' ) {
                        input.consume();

                    }
                    else {
                        MismatchedSetException mse = new MismatchedSetException(null,input);
                        recover(mse);
                        throw mse;}


                    }
                    break;

            }

            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7373:47: ( RULE_DIGIT )+
            int cnt2=0;
            loop2:
            do {
                int alt2=2;
                int LA2_0 = input.LA(1);

                if ( ((LA2_0>='0' && LA2_0<='9')) ) {
                    alt2=1;
                }


                switch (alt2) {
            	case 1 :
            	    // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7373:47: RULE_DIGIT
            	    {
            	    mRULE_DIGIT(); 

            	    }
            	    break;

            	default :
            	    if ( cnt2 >= 1 ) break loop2;
                        EarlyExitException eee =
                            new EarlyExitException(2, input);
                        throw eee;
                }
                cnt2++;
            } while (true);


            }

        }
        finally {
        }
    }
    // $ANTLR end "RULE_EXPONENT"

    // $ANTLR start "RULE_INT_EXPONENT"
    public final void mRULE_INT_EXPONENT() throws RecognitionException {
        try {
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7375:28: ( ( 'e' | 'E' ) ( '+' )? ( RULE_DIGIT )+ )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7375:30: ( 'e' | 'E' ) ( '+' )? ( RULE_DIGIT )+
            {
            if ( input.LA(1)=='E'||input.LA(1)=='e' ) {
                input.consume();

            }
            else {
                MismatchedSetException mse = new MismatchedSetException(null,input);
                recover(mse);
                throw mse;}

            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7375:40: ( '+' )?
            int alt3=2;
            int LA3_0 = input.LA(1);

            if ( (LA3_0=='+') ) {
                alt3=1;
            }
            switch (alt3) {
                case 1 :
                    // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7375:40: '+'
                    {
                    match('+'); 

                    }
                    break;

            }

            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7375:45: ( RULE_DIGIT )+
            int cnt4=0;
            loop4:
            do {
                int alt4=2;
                int LA4_0 = input.LA(1);

                if ( ((LA4_0>='0' && LA4_0<='9')) ) {
                    alt4=1;
                }


                switch (alt4) {
            	case 1 :
            	    // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7375:45: RULE_DIGIT
            	    {
            	    mRULE_DIGIT(); 

            	    }
            	    break;

            	default :
            	    if ( cnt4 >= 1 ) break loop4;
                        EarlyExitException eee =
                            new EarlyExitException(4, input);
                        throw eee;
                }
                cnt4++;
            } while (true);


            }

        }
        finally {
        }
    }
    // $ANTLR end "RULE_INT_EXPONENT"

    // $ANTLR start "RULE_REAL_LIT"
    public final void mRULE_REAL_LIT() throws RecognitionException {
        try {
            int _type = RULE_REAL_LIT;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7377:15: ( ( RULE_DIGIT )+ ( '_' ( RULE_DIGIT )+ )* '.' ( RULE_DIGIT )+ ( '_' ( RULE_DIGIT )+ )* ( RULE_EXPONENT )? )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7377:17: ( RULE_DIGIT )+ ( '_' ( RULE_DIGIT )+ )* '.' ( RULE_DIGIT )+ ( '_' ( RULE_DIGIT )+ )* ( RULE_EXPONENT )?
            {
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7377:17: ( RULE_DIGIT )+
            int cnt5=0;
            loop5:
            do {
                int alt5=2;
                int LA5_0 = input.LA(1);

                if ( ((LA5_0>='0' && LA5_0<='9')) ) {
                    alt5=1;
                }


                switch (alt5) {
            	case 1 :
            	    // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7377:17: RULE_DIGIT
            	    {
            	    mRULE_DIGIT(); 

            	    }
            	    break;

            	default :
            	    if ( cnt5 >= 1 ) break loop5;
                        EarlyExitException eee =
                            new EarlyExitException(5, input);
                        throw eee;
                }
                cnt5++;
            } while (true);

            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7377:29: ( '_' ( RULE_DIGIT )+ )*
            loop7:
            do {
                int alt7=2;
                int LA7_0 = input.LA(1);

                if ( (LA7_0=='_') ) {
                    alt7=1;
                }


                switch (alt7) {
            	case 1 :
            	    // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7377:30: '_' ( RULE_DIGIT )+
            	    {
            	    match('_'); 
            	    // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7377:34: ( RULE_DIGIT )+
            	    int cnt6=0;
            	    loop6:
            	    do {
            	        int alt6=2;
            	        int LA6_0 = input.LA(1);

            	        if ( ((LA6_0>='0' && LA6_0<='9')) ) {
            	            alt6=1;
            	        }


            	        switch (alt6) {
            	    	case 1 :
            	    	    // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7377:34: RULE_DIGIT
            	    	    {
            	    	    mRULE_DIGIT(); 

            	    	    }
            	    	    break;

            	    	default :
            	    	    if ( cnt6 >= 1 ) break loop6;
            	                EarlyExitException eee =
            	                    new EarlyExitException(6, input);
            	                throw eee;
            	        }
            	        cnt6++;
            	    } while (true);


            	    }
            	    break;

            	default :
            	    break loop7;
                }
            } while (true);

            match('.'); 
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7377:52: ( RULE_DIGIT )+
            int cnt8=0;
            loop8:
            do {
                int alt8=2;
                int LA8_0 = input.LA(1);

                if ( ((LA8_0>='0' && LA8_0<='9')) ) {
                    alt8=1;
                }


                switch (alt8) {
            	case 1 :
            	    // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7377:52: RULE_DIGIT
            	    {
            	    mRULE_DIGIT(); 

            	    }
            	    break;

            	default :
            	    if ( cnt8 >= 1 ) break loop8;
                        EarlyExitException eee =
                            new EarlyExitException(8, input);
                        throw eee;
                }
                cnt8++;
            } while (true);

            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7377:64: ( '_' ( RULE_DIGIT )+ )*
            loop10:
            do {
                int alt10=2;
                int LA10_0 = input.LA(1);

                if ( (LA10_0=='_') ) {
                    alt10=1;
                }


                switch (alt10) {
            	case 1 :
            	    // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7377:65: '_' ( RULE_DIGIT )+
            	    {
            	    match('_'); 
            	    // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7377:69: ( RULE_DIGIT )+
            	    int cnt9=0;
            	    loop9:
            	    do {
            	        int alt9=2;
            	        int LA9_0 = input.LA(1);

            	        if ( ((LA9_0>='0' && LA9_0<='9')) ) {
            	            alt9=1;
            	        }


            	        switch (alt9) {
            	    	case 1 :
            	    	    // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7377:69: RULE_DIGIT
            	    	    {
            	    	    mRULE_DIGIT(); 

            	    	    }
            	    	    break;

            	    	default :
            	    	    if ( cnt9 >= 1 ) break loop9;
            	                EarlyExitException eee =
            	                    new EarlyExitException(9, input);
            	                throw eee;
            	        }
            	        cnt9++;
            	    } while (true);


            	    }
            	    break;

            	default :
            	    break loop10;
                }
            } while (true);

            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7377:83: ( RULE_EXPONENT )?
            int alt11=2;
            int LA11_0 = input.LA(1);

            if ( (LA11_0=='E'||LA11_0=='e') ) {
                alt11=1;
            }
            switch (alt11) {
                case 1 :
                    // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7377:83: RULE_EXPONENT
                    {
                    mRULE_EXPONENT(); 

                    }
                    break;

            }


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "RULE_REAL_LIT"

    // $ANTLR start "RULE_DIGIT"
    public final void mRULE_DIGIT() throws RecognitionException {
        try {
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7379:21: ( '0' .. '9' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7379:23: '0' .. '9'
            {
            matchRange('0','9'); 

            }

        }
        finally {
        }
    }
    // $ANTLR end "RULE_DIGIT"

    // $ANTLR start "RULE_EXTENDED_DIGIT"
    public final void mRULE_EXTENDED_DIGIT() throws RecognitionException {
        try {
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7381:30: ( ( '0' .. '9' | 'a' .. 'f' | 'A' .. 'F' ) )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7381:32: ( '0' .. '9' | 'a' .. 'f' | 'A' .. 'F' )
            {
            if ( (input.LA(1)>='0' && input.LA(1)<='9')||(input.LA(1)>='A' && input.LA(1)<='F')||(input.LA(1)>='a' && input.LA(1)<='f') ) {
                input.consume();

            }
            else {
                MismatchedSetException mse = new MismatchedSetException(null,input);
                recover(mse);
                throw mse;}


            }

        }
        finally {
        }
    }
    // $ANTLR end "RULE_EXTENDED_DIGIT"

    // $ANTLR start "RULE_BASED_INTEGER"
    public final void mRULE_BASED_INTEGER() throws RecognitionException {
        try {
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7383:29: ( RULE_EXTENDED_DIGIT ( ( '_' )? RULE_EXTENDED_DIGIT )* )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7383:31: RULE_EXTENDED_DIGIT ( ( '_' )? RULE_EXTENDED_DIGIT )*
            {
            mRULE_EXTENDED_DIGIT(); 
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7383:51: ( ( '_' )? RULE_EXTENDED_DIGIT )*
            loop13:
            do {
                int alt13=2;
                int LA13_0 = input.LA(1);

                if ( ((LA13_0>='0' && LA13_0<='9')||(LA13_0>='A' && LA13_0<='F')||LA13_0=='_'||(LA13_0>='a' && LA13_0<='f')) ) {
                    alt13=1;
                }


                switch (alt13) {
            	case 1 :
            	    // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7383:52: ( '_' )? RULE_EXTENDED_DIGIT
            	    {
            	    // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7383:52: ( '_' )?
            	    int alt12=2;
            	    int LA12_0 = input.LA(1);

            	    if ( (LA12_0=='_') ) {
            	        alt12=1;
            	    }
            	    switch (alt12) {
            	        case 1 :
            	            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7383:52: '_'
            	            {
            	            match('_'); 

            	            }
            	            break;

            	    }

            	    mRULE_EXTENDED_DIGIT(); 

            	    }
            	    break;

            	default :
            	    break loop13;
                }
            } while (true);


            }

        }
        finally {
        }
    }
    // $ANTLR end "RULE_BASED_INTEGER"

    // $ANTLR start "RULE_ID"
    public final void mRULE_ID() throws RecognitionException {
        try {
            int _type = RULE_ID;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7385:9: ( ( '^' )? ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | '_' | '0' .. '9' )* )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7385:11: ( '^' )? ( 'a' .. 'z' | 'A' .. 'Z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | '_' | '0' .. '9' )*
            {
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7385:11: ( '^' )?
            int alt14=2;
            int LA14_0 = input.LA(1);

            if ( (LA14_0=='^') ) {
                alt14=1;
            }
            switch (alt14) {
                case 1 :
                    // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7385:11: '^'
                    {
                    match('^'); 

                    }
                    break;

            }

            if ( (input.LA(1)>='A' && input.LA(1)<='Z')||input.LA(1)=='_'||(input.LA(1)>='a' && input.LA(1)<='z') ) {
                input.consume();

            }
            else {
                MismatchedSetException mse = new MismatchedSetException(null,input);
                recover(mse);
                throw mse;}

            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7385:40: ( 'a' .. 'z' | 'A' .. 'Z' | '_' | '0' .. '9' )*
            loop15:
            do {
                int alt15=2;
                int LA15_0 = input.LA(1);

                if ( ((LA15_0>='0' && LA15_0<='9')||(LA15_0>='A' && LA15_0<='Z')||LA15_0=='_'||(LA15_0>='a' && LA15_0<='z')) ) {
                    alt15=1;
                }


                switch (alt15) {
            	case 1 :
            	    // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:
            	    {
            	    if ( (input.LA(1)>='0' && input.LA(1)<='9')||(input.LA(1)>='A' && input.LA(1)<='Z')||input.LA(1)=='_'||(input.LA(1)>='a' && input.LA(1)<='z') ) {
            	        input.consume();

            	    }
            	    else {
            	        MismatchedSetException mse = new MismatchedSetException(null,input);
            	        recover(mse);
            	        throw mse;}


            	    }
            	    break;

            	default :
            	    break loop15;
                }
            } while (true);


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "RULE_ID"

    // $ANTLR start "RULE_INT"
    public final void mRULE_INT() throws RecognitionException {
        try {
            int _type = RULE_INT;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7387:10: ( ( '0' .. '9' )+ )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7387:12: ( '0' .. '9' )+
            {
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7387:12: ( '0' .. '9' )+
            int cnt16=0;
            loop16:
            do {
                int alt16=2;
                int LA16_0 = input.LA(1);

                if ( ((LA16_0>='0' && LA16_0<='9')) ) {
                    alt16=1;
                }


                switch (alt16) {
            	case 1 :
            	    // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7387:13: '0' .. '9'
            	    {
            	    matchRange('0','9'); 

            	    }
            	    break;

            	default :
            	    if ( cnt16 >= 1 ) break loop16;
                        EarlyExitException eee =
                            new EarlyExitException(16, input);
                        throw eee;
                }
                cnt16++;
            } while (true);


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "RULE_INT"

    // $ANTLR start "RULE_STRING"
    public final void mRULE_STRING() throws RecognitionException {
        try {
            int _type = RULE_STRING;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7389:13: ( ( '\"' ( '\\\\' . | ~ ( ( '\\\\' | '\"' ) ) )* '\"' | '\\'' ( '\\\\' . | ~ ( ( '\\\\' | '\\'' ) ) )* '\\'' ) )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7389:15: ( '\"' ( '\\\\' . | ~ ( ( '\\\\' | '\"' ) ) )* '\"' | '\\'' ( '\\\\' . | ~ ( ( '\\\\' | '\\'' ) ) )* '\\'' )
            {
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7389:15: ( '\"' ( '\\\\' . | ~ ( ( '\\\\' | '\"' ) ) )* '\"' | '\\'' ( '\\\\' . | ~ ( ( '\\\\' | '\\'' ) ) )* '\\'' )
            int alt19=2;
            int LA19_0 = input.LA(1);

            if ( (LA19_0=='\"') ) {
                alt19=1;
            }
            else if ( (LA19_0=='\'') ) {
                alt19=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 19, 0, input);

                throw nvae;
            }
            switch (alt19) {
                case 1 :
                    // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7389:16: '\"' ( '\\\\' . | ~ ( ( '\\\\' | '\"' ) ) )* '\"'
                    {
                    match('\"'); 
                    // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7389:20: ( '\\\\' . | ~ ( ( '\\\\' | '\"' ) ) )*
                    loop17:
                    do {
                        int alt17=3;
                        int LA17_0 = input.LA(1);

                        if ( (LA17_0=='\\') ) {
                            alt17=1;
                        }
                        else if ( ((LA17_0>='\u0000' && LA17_0<='!')||(LA17_0>='#' && LA17_0<='[')||(LA17_0>=']' && LA17_0<='\uFFFF')) ) {
                            alt17=2;
                        }


                        switch (alt17) {
                    	case 1 :
                    	    // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7389:21: '\\\\' .
                    	    {
                    	    match('\\'); 
                    	    matchAny(); 

                    	    }
                    	    break;
                    	case 2 :
                    	    // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7389:28: ~ ( ( '\\\\' | '\"' ) )
                    	    {
                    	    if ( (input.LA(1)>='\u0000' && input.LA(1)<='!')||(input.LA(1)>='#' && input.LA(1)<='[')||(input.LA(1)>=']' && input.LA(1)<='\uFFFF') ) {
                    	        input.consume();

                    	    }
                    	    else {
                    	        MismatchedSetException mse = new MismatchedSetException(null,input);
                    	        recover(mse);
                    	        throw mse;}


                    	    }
                    	    break;

                    	default :
                    	    break loop17;
                        }
                    } while (true);

                    match('\"'); 

                    }
                    break;
                case 2 :
                    // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7389:48: '\\'' ( '\\\\' . | ~ ( ( '\\\\' | '\\'' ) ) )* '\\''
                    {
                    match('\''); 
                    // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7389:53: ( '\\\\' . | ~ ( ( '\\\\' | '\\'' ) ) )*
                    loop18:
                    do {
                        int alt18=3;
                        int LA18_0 = input.LA(1);

                        if ( (LA18_0=='\\') ) {
                            alt18=1;
                        }
                        else if ( ((LA18_0>='\u0000' && LA18_0<='&')||(LA18_0>='(' && LA18_0<='[')||(LA18_0>=']' && LA18_0<='\uFFFF')) ) {
                            alt18=2;
                        }


                        switch (alt18) {
                    	case 1 :
                    	    // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7389:54: '\\\\' .
                    	    {
                    	    match('\\'); 
                    	    matchAny(); 

                    	    }
                    	    break;
                    	case 2 :
                    	    // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7389:61: ~ ( ( '\\\\' | '\\'' ) )
                    	    {
                    	    if ( (input.LA(1)>='\u0000' && input.LA(1)<='&')||(input.LA(1)>='(' && input.LA(1)<='[')||(input.LA(1)>=']' && input.LA(1)<='\uFFFF') ) {
                    	        input.consume();

                    	    }
                    	    else {
                    	        MismatchedSetException mse = new MismatchedSetException(null,input);
                    	        recover(mse);
                    	        throw mse;}


                    	    }
                    	    break;

                    	default :
                    	    break loop18;
                        }
                    } while (true);

                    match('\''); 

                    }
                    break;

            }


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "RULE_STRING"

    // $ANTLR start "RULE_ML_COMMENT"
    public final void mRULE_ML_COMMENT() throws RecognitionException {
        try {
            int _type = RULE_ML_COMMENT;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7391:17: ( '/*' ( options {greedy=false; } : . )* '*/' )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7391:19: '/*' ( options {greedy=false; } : . )* '*/'
            {
            match("/*"); 

            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7391:24: ( options {greedy=false; } : . )*
            loop20:
            do {
                int alt20=2;
                int LA20_0 = input.LA(1);

                if ( (LA20_0=='*') ) {
                    int LA20_1 = input.LA(2);

                    if ( (LA20_1=='/') ) {
                        alt20=2;
                    }
                    else if ( ((LA20_1>='\u0000' && LA20_1<='.')||(LA20_1>='0' && LA20_1<='\uFFFF')) ) {
                        alt20=1;
                    }


                }
                else if ( ((LA20_0>='\u0000' && LA20_0<=')')||(LA20_0>='+' && LA20_0<='\uFFFF')) ) {
                    alt20=1;
                }


                switch (alt20) {
            	case 1 :
            	    // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7391:52: .
            	    {
            	    matchAny(); 

            	    }
            	    break;

            	default :
            	    break loop20;
                }
            } while (true);

            match("*/"); 


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "RULE_ML_COMMENT"

    // $ANTLR start "RULE_SL_COMMENT"
    public final void mRULE_SL_COMMENT() throws RecognitionException {
        try {
            int _type = RULE_SL_COMMENT;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7393:17: ( '//' (~ ( ( '\\n' | '\\r' ) ) )* ( ( '\\r' )? '\\n' )? )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7393:19: '//' (~ ( ( '\\n' | '\\r' ) ) )* ( ( '\\r' )? '\\n' )?
            {
            match("//"); 

            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7393:24: (~ ( ( '\\n' | '\\r' ) ) )*
            loop21:
            do {
                int alt21=2;
                int LA21_0 = input.LA(1);

                if ( ((LA21_0>='\u0000' && LA21_0<='\t')||(LA21_0>='\u000B' && LA21_0<='\f')||(LA21_0>='\u000E' && LA21_0<='\uFFFF')) ) {
                    alt21=1;
                }


                switch (alt21) {
            	case 1 :
            	    // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7393:24: ~ ( ( '\\n' | '\\r' ) )
            	    {
            	    if ( (input.LA(1)>='\u0000' && input.LA(1)<='\t')||(input.LA(1)>='\u000B' && input.LA(1)<='\f')||(input.LA(1)>='\u000E' && input.LA(1)<='\uFFFF') ) {
            	        input.consume();

            	    }
            	    else {
            	        MismatchedSetException mse = new MismatchedSetException(null,input);
            	        recover(mse);
            	        throw mse;}


            	    }
            	    break;

            	default :
            	    break loop21;
                }
            } while (true);

            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7393:40: ( ( '\\r' )? '\\n' )?
            int alt23=2;
            int LA23_0 = input.LA(1);

            if ( (LA23_0=='\n'||LA23_0=='\r') ) {
                alt23=1;
            }
            switch (alt23) {
                case 1 :
                    // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7393:41: ( '\\r' )? '\\n'
                    {
                    // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7393:41: ( '\\r' )?
                    int alt22=2;
                    int LA22_0 = input.LA(1);

                    if ( (LA22_0=='\r') ) {
                        alt22=1;
                    }
                    switch (alt22) {
                        case 1 :
                            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7393:41: '\\r'
                            {
                            match('\r'); 

                            }
                            break;

                    }

                    match('\n'); 

                    }
                    break;

            }


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "RULE_SL_COMMENT"

    // $ANTLR start "RULE_WS"
    public final void mRULE_WS() throws RecognitionException {
        try {
            int _type = RULE_WS;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7395:9: ( ( ' ' | '\\t' | '\\r' | '\\n' )+ )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7395:11: ( ' ' | '\\t' | '\\r' | '\\n' )+
            {
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7395:11: ( ' ' | '\\t' | '\\r' | '\\n' )+
            int cnt24=0;
            loop24:
            do {
                int alt24=2;
                int LA24_0 = input.LA(1);

                if ( ((LA24_0>='\t' && LA24_0<='\n')||LA24_0=='\r'||LA24_0==' ') ) {
                    alt24=1;
                }


                switch (alt24) {
            	case 1 :
            	    // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:
            	    {
            	    if ( (input.LA(1)>='\t' && input.LA(1)<='\n')||input.LA(1)=='\r'||input.LA(1)==' ' ) {
            	        input.consume();

            	    }
            	    else {
            	        MismatchedSetException mse = new MismatchedSetException(null,input);
            	        recover(mse);
            	        throw mse;}


            	    }
            	    break;

            	default :
            	    if ( cnt24 >= 1 ) break loop24;
                        EarlyExitException eee =
                            new EarlyExitException(24, input);
                        throw eee;
                }
                cnt24++;
            } while (true);


            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "RULE_WS"

    // $ANTLR start "RULE_ANY_OTHER"
    public final void mRULE_ANY_OTHER() throws RecognitionException {
        try {
            int _type = RULE_ANY_OTHER;
            int _channel = DEFAULT_TOKEN_CHANNEL;
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7397:16: ( . )
            // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:7397:18: .
            {
            matchAny(); 

            }

            state.type = _type;
            state.channel = _channel;
        }
        finally {
        }
    }
    // $ANTLR end "RULE_ANY_OTHER"

    public void mTokens() throws RecognitionException {
        // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:8: ( T__17 | T__18 | T__19 | T__20 | T__21 | T__22 | T__23 | T__24 | T__25 | T__26 | T__27 | T__28 | T__29 | T__30 | T__31 | T__32 | T__33 | T__34 | T__35 | T__36 | T__37 | T__38 | T__39 | T__40 | T__41 | T__42 | T__43 | T__44 | T__45 | T__46 | T__47 | T__48 | T__49 | T__50 | T__51 | T__52 | T__53 | T__54 | T__55 | T__56 | T__57 | T__58 | T__59 | T__60 | T__61 | T__62 | T__63 | RULE_REAL_LIT | RULE_ID | RULE_INT | RULE_STRING | RULE_ML_COMMENT | RULE_SL_COMMENT | RULE_WS | RULE_ANY_OTHER )
        int alt25=55;
        alt25 = dfa25.predict(input);
        switch (alt25) {
            case 1 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:10: T__17
                {
                mT__17(); 

                }
                break;
            case 2 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:16: T__18
                {
                mT__18(); 

                }
                break;
            case 3 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:22: T__19
                {
                mT__19(); 

                }
                break;
            case 4 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:28: T__20
                {
                mT__20(); 

                }
                break;
            case 5 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:34: T__21
                {
                mT__21(); 

                }
                break;
            case 6 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:40: T__22
                {
                mT__22(); 

                }
                break;
            case 7 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:46: T__23
                {
                mT__23(); 

                }
                break;
            case 8 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:52: T__24
                {
                mT__24(); 

                }
                break;
            case 9 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:58: T__25
                {
                mT__25(); 

                }
                break;
            case 10 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:64: T__26
                {
                mT__26(); 

                }
                break;
            case 11 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:70: T__27
                {
                mT__27(); 

                }
                break;
            case 12 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:76: T__28
                {
                mT__28(); 

                }
                break;
            case 13 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:82: T__29
                {
                mT__29(); 

                }
                break;
            case 14 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:88: T__30
                {
                mT__30(); 

                }
                break;
            case 15 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:94: T__31
                {
                mT__31(); 

                }
                break;
            case 16 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:100: T__32
                {
                mT__32(); 

                }
                break;
            case 17 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:106: T__33
                {
                mT__33(); 

                }
                break;
            case 18 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:112: T__34
                {
                mT__34(); 

                }
                break;
            case 19 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:118: T__35
                {
                mT__35(); 

                }
                break;
            case 20 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:124: T__36
                {
                mT__36(); 

                }
                break;
            case 21 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:130: T__37
                {
                mT__37(); 

                }
                break;
            case 22 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:136: T__38
                {
                mT__38(); 

                }
                break;
            case 23 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:142: T__39
                {
                mT__39(); 

                }
                break;
            case 24 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:148: T__40
                {
                mT__40(); 

                }
                break;
            case 25 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:154: T__41
                {
                mT__41(); 

                }
                break;
            case 26 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:160: T__42
                {
                mT__42(); 

                }
                break;
            case 27 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:166: T__43
                {
                mT__43(); 

                }
                break;
            case 28 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:172: T__44
                {
                mT__44(); 

                }
                break;
            case 29 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:178: T__45
                {
                mT__45(); 

                }
                break;
            case 30 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:184: T__46
                {
                mT__46(); 

                }
                break;
            case 31 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:190: T__47
                {
                mT__47(); 

                }
                break;
            case 32 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:196: T__48
                {
                mT__48(); 

                }
                break;
            case 33 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:202: T__49
                {
                mT__49(); 

                }
                break;
            case 34 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:208: T__50
                {
                mT__50(); 

                }
                break;
            case 35 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:214: T__51
                {
                mT__51(); 

                }
                break;
            case 36 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:220: T__52
                {
                mT__52(); 

                }
                break;
            case 37 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:226: T__53
                {
                mT__53(); 

                }
                break;
            case 38 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:232: T__54
                {
                mT__54(); 

                }
                break;
            case 39 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:238: T__55
                {
                mT__55(); 

                }
                break;
            case 40 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:244: T__56
                {
                mT__56(); 

                }
                break;
            case 41 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:250: T__57
                {
                mT__57(); 

                }
                break;
            case 42 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:256: T__58
                {
                mT__58(); 

                }
                break;
            case 43 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:262: T__59
                {
                mT__59(); 

                }
                break;
            case 44 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:268: T__60
                {
                mT__60(); 

                }
                break;
            case 45 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:274: T__61
                {
                mT__61(); 

                }
                break;
            case 46 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:280: T__62
                {
                mT__62(); 

                }
                break;
            case 47 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:286: T__63
                {
                mT__63(); 

                }
                break;
            case 48 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:292: RULE_REAL_LIT
                {
                mRULE_REAL_LIT(); 

                }
                break;
            case 49 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:306: RULE_ID
                {
                mRULE_ID(); 

                }
                break;
            case 50 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:314: RULE_INT
                {
                mRULE_INT(); 

                }
                break;
            case 51 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:323: RULE_STRING
                {
                mRULE_STRING(); 

                }
                break;
            case 52 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:335: RULE_ML_COMMENT
                {
                mRULE_ML_COMMENT(); 

                }
                break;
            case 53 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:351: RULE_SL_COMMENT
                {
                mRULE_SL_COMMENT(); 

                }
                break;
            case 54 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:367: RULE_WS
                {
                mRULE_WS(); 

                }
                break;
            case 55 :
                // ../org.osate.alisa.common.ui/src-gen/org/osate/alisa/common/ui/contentassist/antlr/internal/InternalCommon.g:1:375: RULE_ANY_OTHER
                {
                mRULE_ANY_OTHER(); 

                }
                break;

        }

    }


    protected DFA25 dfa25 = new DFA25(this);
    static final String DFA25_eotS =
        "\1\uffff\2\46\1\53\1\55\1\57\1\61\1\63\1\65\1\46\1\uffff\1\71\1"+
        "\74\1\uffff\7\77\11\uffff\1\77\1\46\1\127\1\46\1\uffff\2\46\17\uffff"+
        "\1\135\11\uffff\1\77\1\uffff\14\77\11\uffff\1\77\3\uffff\1\127\4"+
        "\uffff\2\77\1\157\7\77\1\167\5\77\1\175\1\uffff\1\77\1\177\1\u0080"+
        "\3\77\1\u0084\1\uffff\3\77\1\u0088\1\u0089\1\uffff\1\77\2\uffff"+
        "\1\u008b\2\77\1\uffff\3\77\2\uffff\1\u0091\1\uffff\5\77\1\uffff"+
        "\1\77\1\u0098\1\u0099\3\77\2\uffff\2\77\1\u009f\2\77\1\uffff\2\77"+
        "\1\u00a4\1\77\1\uffff\1\u00a6\1\uffff";
    static final String DFA25_eofS =
        "\u00a7\uffff";
    static final String DFA25_minS =
        "\1\0\1\174\1\46\3\75\2\76\1\56\1\72\1\uffff\2\52\1\uffff\2\141"+
        "\1\162\1\141\1\155\1\165\1\145\11\uffff\1\165\1\72\1\56\1\101\1"+
        "\uffff\2\0\17\uffff\1\74\11\uffff\1\151\1\uffff\1\144\1\162\1\151"+
        "\1\165\1\162\1\143\1\162\1\146\1\147\1\143\1\163\1\141\11\uffff"+
        "\1\154\3\uffff\1\56\4\uffff\1\163\1\154\1\60\1\147\1\163\1\145\1"+
        "\157\1\145\1\156\1\157\1\60\2\143\1\147\1\154\1\145\1\60\1\uffff"+
        "\1\145\2\60\1\162\1\160\1\151\1\60\1\uffff\1\145\1\162\1\156\2\60"+
        "\1\uffff\1\164\2\uffff\1\60\1\164\1\156\1\uffff\1\163\1\151\1\157"+
        "\2\uffff\1\60\1\uffff\1\151\1\147\1\163\1\160\1\163\1\uffff\1\157"+
        "\2\60\2\164\1\156\2\uffff\2\151\1\60\1\157\1\143\1\uffff\1\156\1"+
        "\111\1\60\1\144\1\uffff\1\60\1\uffff";
    static final String DFA25_maxS =
        "\1\uffff\1\174\1\46\1\76\2\75\2\76\1\56\1\72\1\uffff\1\52\1\57"+
        "\1\uffff\1\141\1\162\1\170\1\141\1\156\1\165\1\151\11\uffff\1\165"+
        "\1\72\1\137\1\172\1\uffff\2\uffff\17\uffff\1\74\11\uffff\1\154\1"+
        "\uffff\1\144\1\162\1\151\1\165\1\162\1\143\1\162\1\146\1\147\1\143"+
        "\1\163\1\141\11\uffff\1\154\3\uffff\1\137\4\uffff\1\163\1\154\1"+
        "\172\1\147\1\163\1\145\1\157\1\145\1\156\1\157\1\172\2\143\1\147"+
        "\1\154\1\145\1\172\1\uffff\1\145\2\172\1\162\1\160\1\151\1\172\1"+
        "\uffff\1\145\1\162\1\156\2\172\1\uffff\1\164\2\uffff\1\172\1\164"+
        "\1\156\1\uffff\1\163\1\151\1\157\2\uffff\1\172\1\uffff\1\151\1\147"+
        "\1\163\1\160\1\163\1\uffff\1\157\2\172\2\164\1\156\2\uffff\2\151"+
        "\1\172\1\157\1\143\1\uffff\1\156\1\111\1\172\1\144\1\uffff\1\172"+
        "\1\uffff";
    static final String DFA25_acceptS =
        "\12\uffff\1\16\2\uffff\1\23\7\uffff\1\40\1\41\1\42\1\43\1\47\1"+
        "\50\1\51\1\53\1\54\4\uffff\1\61\2\uffff\1\66\1\67\1\1\1\2\1\3\1"+
        "\13\1\46\1\4\1\24\1\5\1\6\1\14\1\7\1\10\1\17\1\uffff\1\45\1\15\1"+
        "\16\1\21\1\20\1\64\1\65\1\22\1\23\1\uffff\1\61\14\uffff\1\40\1\41"+
        "\1\42\1\43\1\47\1\50\1\51\1\53\1\54\1\uffff\1\56\1\62\1\60\1\uffff"+
        "\1\63\1\66\1\11\1\12\21\uffff\1\26\7\uffff\1\44\5\uffff\1\33\1\uffff"+
        "\1\52\1\57\3\uffff\1\31\3\uffff\1\55\1\25\1\uffff\1\27\5\uffff\1"+
        "\35\6\uffff\1\30\1\32\5\uffff\1\36\4\uffff\1\34\1\uffff\1\37";
    static final String DFA25_specialS =
        "\1\2\42\uffff\1\1\1\0\u0082\uffff}>";
    static final String[] DFA25_transitionS = {
            "\11\46\2\45\2\46\1\45\22\46\1\45\1\4\1\43\1\27\1\46\1\15\1"+
            "\2\1\44\1\31\1\32\1\13\1\12\1\33\1\7\1\10\1\14\12\40\1\37\1"+
            "\46\1\6\1\3\1\5\1\11\1\30\32\42\1\25\1\46\1\26\1\41\1\42\1\46"+
            "\3\42\1\24\1\20\1\16\2\42\1\22\4\42\1\36\4\42\1\23\1\17\2\42"+
            "\1\21\3\42\1\34\1\1\1\35\uff82\46",
            "\1\47",
            "\1\50",
            "\1\51\1\52",
            "\1\54",
            "\1\56",
            "\1\60",
            "\1\62",
            "\1\64",
            "\1\66",
            "",
            "\1\70",
            "\1\72\4\uffff\1\73",
            "",
            "\1\76",
            "\1\101\1\100\5\uffff\1\102\11\uffff\1\103",
            "\1\104\5\uffff\1\105",
            "\1\106",
            "\1\110\1\107",
            "\1\111",
            "\1\112\3\uffff\1\113",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "\1\125",
            "\1\126",
            "\1\130\1\uffff\12\131\45\uffff\1\130",
            "\32\77\4\uffff\1\77\1\uffff\32\77",
            "",
            "\0\132",
            "\0\132",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "\1\134",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "\1\137\2\uffff\1\136",
            "",
            "\1\140",
            "\1\141",
            "\1\142",
            "\1\143",
            "\1\144",
            "\1\145",
            "\1\146",
            "\1\147",
            "\1\150",
            "\1\151",
            "\1\152",
            "\1\153",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "\1\154",
            "",
            "",
            "",
            "\1\130\1\uffff\12\131\45\uffff\1\130",
            "",
            "",
            "",
            "",
            "\1\155",
            "\1\156",
            "\12\77\7\uffff\32\77\4\uffff\1\77\1\uffff\32\77",
            "\1\160",
            "\1\161",
            "\1\162",
            "\1\163",
            "\1\164",
            "\1\165",
            "\1\166",
            "\12\77\7\uffff\32\77\4\uffff\1\77\1\uffff\32\77",
            "\1\170",
            "\1\171",
            "\1\172",
            "\1\173",
            "\1\174",
            "\12\77\7\uffff\32\77\4\uffff\1\77\1\uffff\32\77",
            "",
            "\1\176",
            "\12\77\7\uffff\32\77\4\uffff\1\77\1\uffff\32\77",
            "\12\77\7\uffff\32\77\4\uffff\1\77\1\uffff\32\77",
            "\1\u0081",
            "\1\u0082",
            "\1\u0083",
            "\12\77\7\uffff\32\77\4\uffff\1\77\1\uffff\32\77",
            "",
            "\1\u0085",
            "\1\u0086",
            "\1\u0087",
            "\12\77\7\uffff\32\77\4\uffff\1\77\1\uffff\32\77",
            "\12\77\7\uffff\32\77\4\uffff\1\77\1\uffff\32\77",
            "",
            "\1\u008a",
            "",
            "",
            "\12\77\7\uffff\32\77\4\uffff\1\77\1\uffff\32\77",
            "\1\u008c",
            "\1\u008d",
            "",
            "\1\u008e",
            "\1\u008f",
            "\1\u0090",
            "",
            "",
            "\12\77\7\uffff\32\77\4\uffff\1\77\1\uffff\32\77",
            "",
            "\1\u0092",
            "\1\u0093",
            "\1\u0094",
            "\1\u0095",
            "\1\u0096",
            "",
            "\1\u0097",
            "\12\77\7\uffff\32\77\4\uffff\1\77\1\uffff\32\77",
            "\12\77\7\uffff\32\77\4\uffff\1\77\1\uffff\32\77",
            "\1\u009a",
            "\1\u009b",
            "\1\u009c",
            "",
            "",
            "\1\u009d",
            "\1\u009e",
            "\12\77\7\uffff\32\77\4\uffff\1\77\1\uffff\32\77",
            "\1\u00a0",
            "\1\u00a1",
            "",
            "\1\u00a2",
            "\1\u00a3",
            "\12\77\7\uffff\32\77\4\uffff\1\77\1\uffff\32\77",
            "\1\u00a5",
            "",
            "\12\77\7\uffff\32\77\4\uffff\1\77\1\uffff\32\77",
            ""
    };

    static final short[] DFA25_eot = DFA.unpackEncodedString(DFA25_eotS);
    static final short[] DFA25_eof = DFA.unpackEncodedString(DFA25_eofS);
    static final char[] DFA25_min = DFA.unpackEncodedStringToUnsignedChars(DFA25_minS);
    static final char[] DFA25_max = DFA.unpackEncodedStringToUnsignedChars(DFA25_maxS);
    static final short[] DFA25_accept = DFA.unpackEncodedString(DFA25_acceptS);
    static final short[] DFA25_special = DFA.unpackEncodedString(DFA25_specialS);
    static final short[][] DFA25_transition;

    static {
        int numStates = DFA25_transitionS.length;
        DFA25_transition = new short[numStates][];
        for (int i=0; i<numStates; i++) {
            DFA25_transition[i] = DFA.unpackEncodedString(DFA25_transitionS[i]);
        }
    }

    class DFA25 extends DFA {

        public DFA25(BaseRecognizer recognizer) {
            this.recognizer = recognizer;
            this.decisionNumber = 25;
            this.eot = DFA25_eot;
            this.eof = DFA25_eof;
            this.min = DFA25_min;
            this.max = DFA25_max;
            this.accept = DFA25_accept;
            this.special = DFA25_special;
            this.transition = DFA25_transition;
        }
        public String getDescription() {
            return "1:1: Tokens : ( T__17 | T__18 | T__19 | T__20 | T__21 | T__22 | T__23 | T__24 | T__25 | T__26 | T__27 | T__28 | T__29 | T__30 | T__31 | T__32 | T__33 | T__34 | T__35 | T__36 | T__37 | T__38 | T__39 | T__40 | T__41 | T__42 | T__43 | T__44 | T__45 | T__46 | T__47 | T__48 | T__49 | T__50 | T__51 | T__52 | T__53 | T__54 | T__55 | T__56 | T__57 | T__58 | T__59 | T__60 | T__61 | T__62 | T__63 | RULE_REAL_LIT | RULE_ID | RULE_INT | RULE_STRING | RULE_ML_COMMENT | RULE_SL_COMMENT | RULE_WS | RULE_ANY_OTHER );";
        }
        public int specialStateTransition(int s, IntStream _input) throws NoViableAltException {
            IntStream input = _input;
        	int _s = s;
            switch ( s ) {
                    case 0 : 
                        int LA25_36 = input.LA(1);

                        s = -1;
                        if ( ((LA25_36>='\u0000' && LA25_36<='\uFFFF')) ) {s = 90;}

                        else s = 38;

                        if ( s>=0 ) return s;
                        break;
                    case 1 : 
                        int LA25_35 = input.LA(1);

                        s = -1;
                        if ( ((LA25_35>='\u0000' && LA25_35<='\uFFFF')) ) {s = 90;}

                        else s = 38;

                        if ( s>=0 ) return s;
                        break;
                    case 2 : 
                        int LA25_0 = input.LA(1);

                        s = -1;
                        if ( (LA25_0=='|') ) {s = 1;}

                        else if ( (LA25_0=='&') ) {s = 2;}

                        else if ( (LA25_0=='=') ) {s = 3;}

                        else if ( (LA25_0=='!') ) {s = 4;}

                        else if ( (LA25_0=='>') ) {s = 5;}

                        else if ( (LA25_0=='<') ) {s = 6;}

                        else if ( (LA25_0=='-') ) {s = 7;}

                        else if ( (LA25_0=='.') ) {s = 8;}

                        else if ( (LA25_0=='?') ) {s = 9;}

                        else if ( (LA25_0=='+') ) {s = 10;}

                        else if ( (LA25_0=='*') ) {s = 11;}

                        else if ( (LA25_0=='/') ) {s = 12;}

                        else if ( (LA25_0=='%') ) {s = 13;}

                        else if ( (LA25_0=='f') ) {s = 14;}

                        else if ( (LA25_0=='t') ) {s = 15;}

                        else if ( (LA25_0=='e') ) {s = 16;}

                        else if ( (LA25_0=='w') ) {s = 17;}

                        else if ( (LA25_0=='i') ) {s = 18;}

                        else if ( (LA25_0=='s') ) {s = 19;}

                        else if ( (LA25_0=='d') ) {s = 20;}

                        else if ( (LA25_0=='[') ) {s = 21;}

                        else if ( (LA25_0==']') ) {s = 22;}

                        else if ( (LA25_0=='#') ) {s = 23;}

                        else if ( (LA25_0=='@') ) {s = 24;}

                        else if ( (LA25_0=='(') ) {s = 25;}

                        else if ( (LA25_0==')') ) {s = 26;}

                        else if ( (LA25_0==',') ) {s = 27;}

                        else if ( (LA25_0=='{') ) {s = 28;}

                        else if ( (LA25_0=='}') ) {s = 29;}

                        else if ( (LA25_0=='n') ) {s = 30;}

                        else if ( (LA25_0==':') ) {s = 31;}

                        else if ( ((LA25_0>='0' && LA25_0<='9')) ) {s = 32;}

                        else if ( (LA25_0=='^') ) {s = 33;}

                        else if ( ((LA25_0>='A' && LA25_0<='Z')||LA25_0=='_'||(LA25_0>='a' && LA25_0<='c')||(LA25_0>='g' && LA25_0<='h')||(LA25_0>='j' && LA25_0<='m')||(LA25_0>='o' && LA25_0<='r')||(LA25_0>='u' && LA25_0<='v')||(LA25_0>='x' && LA25_0<='z')) ) {s = 34;}

                        else if ( (LA25_0=='\"') ) {s = 35;}

                        else if ( (LA25_0=='\'') ) {s = 36;}

                        else if ( ((LA25_0>='\t' && LA25_0<='\n')||LA25_0=='\r'||LA25_0==' ') ) {s = 37;}

                        else if ( ((LA25_0>='\u0000' && LA25_0<='\b')||(LA25_0>='\u000B' && LA25_0<='\f')||(LA25_0>='\u000E' && LA25_0<='\u001F')||LA25_0=='$'||LA25_0==';'||LA25_0=='\\'||LA25_0=='`'||(LA25_0>='~' && LA25_0<='\uFFFF')) ) {s = 38;}

                        if ( s>=0 ) return s;
                        break;
            }
            NoViableAltException nvae =
                new NoViableAltException(getDescription(), 25, _s, input);
            error(nvae);
            throw nvae;
        }
    }
 

}