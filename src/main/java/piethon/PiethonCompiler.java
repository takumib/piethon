package piethon;

import org.antlr.v4.runtime.ANTLRFileStream;
import org.antlr.v4.runtime.ANTLRInputStream;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTree;
import piethon.parsing.PiethonLexer;
import piethon.parsing.PiethonParser;

import java.io.IOException;

public class PiethonCompiler {
    public static void main(String[] args) {
        try {
            ANTLRInputStream input = new ANTLRFileStream(args[0]);
            PiethonLexer lexer = new PiethonLexer(input);
            CommonTokenStream tokens = new CommonTokenStream(lexer);
            PiethonParser parser = new PiethonParser(tokens);
            ParseTree tree = parser.file();

            System.out.println(tree.getText());

        } catch(IOException e) {
            e.printStackTrace();
        }

    }
}
