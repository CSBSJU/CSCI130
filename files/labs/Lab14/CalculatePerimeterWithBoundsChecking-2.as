#
# CalculatePerimeterWithBoundsChecking.as
# This program will calculate and display the perimeter
# of a rectangular shape where the width and length are
# obtained from the user. The program will check to make
# sure the meaningful values are input.
#
        READ                      # Get the first number
        STORE RECTANGLEWIDTH      # Save the first number as RECTANGLEWIDTH
        READ                      # Get the second number
        STORE RECTANGLELENGTH     # Save the second number as RECTANGLELENGTH

IF1:    LOAD  RECTANGLEWIDTH      # Put value of RECTANGLEWIDTH in accumulator
        SUB   ZERO                # Subtract zero from RECTANGLEWIDTH
        JPOS  IF2                 # Jump to IF2 if RECTANGLEWIDTH is > 0
        JUMP  ENDIF               # Jump to ENDIF if RECTANGLEWIDTH is <= 0

IF2:    LOAD  RECTANGLELENGTH     # Put value of RECTANGLELENGTH in accumulator
        SUB   ZERO                # Subtract zero from RECTANGLELENGTH
        JPOS  THEN                # Jump to THEN if RECTANGLELENGTH is > 0
        JUMP  ENDIF               # Jump to ENDIF if RECTANGLELENGTH is <= 0

THEN:   LOAD  RECTANGLEWIDTH      # Put value of RECTANGLEWIDTH in accumulator
        ADD   RECTANGLEWIDTH      # Add RECTANGLEWIDTH to RECTANGLEWIDTH
        ADD   RECTANGLELENGTH     # Add RECTANGLELENGTH to 2 * RECTANGLEWIDTH
        ADD   RECTANGLELENGTH     # Add RECTANGLELENGTH to 2 * RECTANGLEWIDTH +
                                  # RECTANGLELENGTH
        STORE RECTANGLEPERIMETER  # Save value of RECTANGLEPERIMETER

ENDIF:  LOAD  RECTANGLEPERIMETER  # Put value of RECTANGLEPERIMETER in
                                  # accumulator
        WRITE                     # Display the product in the output window
        HALT                      # END of program

# Memory variable declarations
RECTANGLEWIDTH:     0  # the first term
RECTANGLELENGTH:    0  # the second term
RECTANGLEPERIMETER: 0  # the value is initially zero
ONE:                1  # the constant value one
ZERO:               0  # the constant value zero
