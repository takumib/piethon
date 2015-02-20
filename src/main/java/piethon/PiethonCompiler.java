package piethon;


import org.antlr.v4.runtime.ANTLRFileStream;
import org.antlr.v4.runtime.ANTLRInputStream;

import java.io.IOException;
import java.lang.reflect.AnnotatedElement;

public class PiethonCompiler {
    public static void main(String[] args) {
        try {
            ANTLRInputStream input = new ANTLRFileStream(args[0]);

        } catch(IOException e) {}

    }
}
