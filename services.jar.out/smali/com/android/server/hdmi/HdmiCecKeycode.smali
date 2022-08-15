.class public final Lcom/android/server/hdmi/HdmiCecKeycode;
.super Ljava/lang/Object;
.source "HdmiCecKeycode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;
    }
.end annotation


# static fields
.field public static final KEYCODE_ENTRIES:[Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    const/16 v0, 0x5e

    new-array v0, v0, [Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v5, 0x13

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v7, 0x14

    const/4 v8, 0x2

    invoke-direct {v1, v7, v8, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/4 v7, 0x2

    aput-object v1, v0, v7

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v7, 0x15

    const/4 v8, 0x3

    invoke-direct {v1, v7, v8, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v7, 0x16

    const/4 v9, 0x4

    invoke-direct {v1, v7, v9, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    aput-object v1, v0, v9

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/4 v7, -0x1

    const/4 v10, 0x5

    invoke-direct {v1, v7, v10, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    aput-object v1, v0, v10

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/4 v10, 0x6

    invoke-direct {v1, v7, v10, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    aput-object v1, v0, v10

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/4 v10, 0x7

    invoke-direct {v1, v7, v10, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    aput-object v1, v0, v10

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v11, 0x8

    invoke-direct {v1, v7, v11, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    aput-object v1, v0, v11

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v12, 0x9

    invoke-direct {v1, v8, v12, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    aput-object v1, v0, v12

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v8, 0x52

    invoke-direct {v1, v8, v12, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v13, 0xa

    aput-object v1, v0, v13

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v14, 0xb0

    invoke-direct {v1, v14, v13, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v14, 0xb

    aput-object v1, v0, v14

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v15, 0x100

    invoke-direct {v1, v15, v14, v3, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v15, 0xc

    aput-object v1, v0, v15

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    invoke-direct {v1, v7, v15, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v6, 0xd

    aput-object v1, v0, v6

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    invoke-direct {v1, v9, v6, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v9, 0xe

    aput-object v1, v0, v9

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v9, 0x6f

    invoke-direct {v1, v9, v6, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v9, 0xf

    aput-object v1, v0, v9

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v9, 0xe2

    const/16 v8, 0x10

    invoke-direct {v1, v9, v8, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v9, 0x101

    const/16 v3, 0x11

    invoke-direct {v1, v9, v3, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v3, 0xea

    const/16 v9, 0x1d

    invoke-direct {v1, v3, v9, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v3, 0x12

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v3, 0xe3

    const/16 v9, 0x1e

    invoke-direct {v1, v3, v9, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v3, 0xe4

    const/16 v5, 0x1f

    invoke-direct {v1, v3, v5, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v3, 0x14

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v3, 0x20

    invoke-direct {v1, v10, v3, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v3, 0x15

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v3, 0x21

    invoke-direct {v1, v11, v3, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v3, 0x16

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v3, 0x22

    invoke-direct {v1, v12, v3, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x23

    invoke-direct {v1, v13, v2, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x24

    invoke-direct {v1, v14, v2, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x25

    invoke-direct {v1, v15, v2, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x26

    invoke-direct {v1, v6, v2, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0xe

    const/16 v3, 0x27

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0xf

    const/16 v3, 0x28

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x29

    invoke-direct {v1, v8, v2, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x38

    const/16 v3, 0x2a

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v3, 0x1f

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v3, 0xa0

    const/16 v5, 0x2b

    invoke-direct {v1, v3, v5, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v3, 0x20

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v3, 0x1c

    const/16 v5, 0x2c

    invoke-direct {v1, v3, v5, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v3, 0x21

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v3, 0x2f

    invoke-direct {v1, v7, v3, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v3, 0x22

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v3, 0xa6

    const/16 v5, 0x30

    invoke-direct {v1, v3, v5, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v3, 0x23

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v3, 0xa7

    const/16 v5, 0x31

    invoke-direct {v1, v3, v5, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v3, 0x24

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v3, 0xe5

    const/16 v5, 0x32

    invoke-direct {v1, v3, v5, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v3, 0x25

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v3, 0xde

    const/16 v5, 0x33

    invoke-direct {v1, v3, v5, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v3, 0x26

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v3, 0xb2

    const/16 v5, 0x34

    invoke-direct {v1, v3, v5, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v3, 0x27

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v3, 0xa5

    const/16 v5, 0x35

    invoke-direct {v1, v3, v5, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v3, 0x28

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v3, 0x36

    invoke-direct {v1, v7, v3, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v3, 0x29

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v3, 0x5c

    const/16 v5, 0x37

    invoke-direct {v1, v3, v5, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v3, 0x2a

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v3, 0x5d

    invoke-direct {v1, v3, v2, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v3, 0x2b

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v3, 0x1a

    const/16 v5, 0x40

    const/4 v6, 0x0

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v3, 0x2c

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v3, 0x18

    const/16 v5, 0x41

    invoke-direct {v1, v3, v5, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v3, 0x2d

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v3, 0x19

    const/16 v5, 0x42

    invoke-direct {v1, v3, v5, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v3, 0x2e

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v3, 0xa4

    const/16 v5, 0x43

    const/4 v6, 0x0

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v3, 0x2f

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v3, 0x7e

    const/16 v5, 0x44

    invoke-direct {v1, v3, v5, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v3, 0x30

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v3, 0x56

    const/16 v5, 0x45

    invoke-direct {v1, v3, v5, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v5, 0x31

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v5, 0x7f

    const/16 v6, 0x46

    invoke-direct {v1, v5, v6, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v5, 0x32

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v5, 0x55

    invoke-direct {v1, v5, v6, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v9, 0x33

    aput-object v1, v0, v9

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v9, 0x82

    const/16 v10, 0x47

    invoke-direct {v1, v9, v10, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v9, 0x34

    aput-object v1, v0, v9

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v9, 0x59

    const/16 v10, 0x48

    invoke-direct {v1, v9, v10, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v9, 0x35

    aput-object v1, v0, v9

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v9, 0x5a

    const/16 v10, 0x49

    invoke-direct {v1, v9, v10, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v9, 0x36

    aput-object v1, v0, v9

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v9, 0x81

    const/16 v10, 0x4a

    invoke-direct {v1, v9, v10, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v9, 0x37

    aput-object v1, v0, v9

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v9, 0x57

    const/16 v10, 0x4b

    invoke-direct {v1, v9, v10, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x58

    const/16 v10, 0x4c

    invoke-direct {v1, v2, v10, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v2, 0x39

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x4d

    invoke-direct {v1, v7, v2, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x4e

    invoke-direct {v1, v7, v2, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x4f

    invoke-direct {v1, v7, v2, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x50

    invoke-direct {v1, v7, v2, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0xaf

    const/16 v10, 0x51

    invoke-direct {v1, v2, v10, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x52

    invoke-direct {v1, v7, v2, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0xac

    const/16 v10, 0x53

    invoke-direct {v1, v2, v10, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v2, 0x40

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x102

    const/16 v10, 0x54

    invoke-direct {v1, v2, v10, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v2, 0x41

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    invoke-direct {v1, v7, v5, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v2, 0x42

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    invoke-direct {v1, v7, v3, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v2, 0x43

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    invoke-static {v8}, Lcom/android/server/hdmi/HdmiCecKeycode;->intToSingleByteArray(I)[B

    move-result-object v14

    const/16 v11, 0xeb

    const/16 v12, 0x56

    const/4 v13, 0x1

    const/4 v15, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v15}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZ[BLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v2, 0x44

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x60

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecKeycode;->intToSingleByteArray(I)[B

    move-result-object v14

    const/16 v11, 0xec

    move-object v10, v1

    invoke-direct/range {v10 .. v15}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZ[BLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v2, 0x45

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x80

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecKeycode;->intToSingleByteArray(I)[B

    move-result-object v14

    const/16 v11, 0xee

    move-object v10, v1

    invoke-direct/range {v10 .. v15}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZ[BLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x90

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecKeycode;->intToSingleByteArray(I)[B

    move-result-object v20

    const/16 v17, 0xef

    const/16 v18, 0x56

    const/16 v19, 0x1

    const/16 v21, 0x0

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v21}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZ[BLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v2, 0x47

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecKeycode;->intToSingleByteArray(I)[B

    move-result-object v14

    const/16 v11, 0xf1

    move-object v10, v1

    invoke-direct/range {v10 .. v15}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZ[BLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v2, 0x48

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    invoke-direct {v1, v7, v9, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v2, 0x49

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x60

    const/4 v6, 0x0

    invoke-direct {v1, v7, v2, v6, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x61

    invoke-direct {v1, v7, v2, v6, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x62

    invoke-direct {v1, v7, v2, v6, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x63

    invoke-direct {v1, v7, v2, v6, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x64

    invoke-direct {v1, v7, v2, v6, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x65

    invoke-direct {v1, v7, v2, v6, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x66

    invoke-direct {v1, v7, v2, v6, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v2, 0x50

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x67

    invoke-direct {v1, v7, v2, v6, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v2, 0x51

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x68

    invoke-direct {v1, v7, v2, v6, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v2, 0x52

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x69

    invoke-direct {v1, v7, v2, v6, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v2, 0x53

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x6a

    invoke-direct {v1, v7, v2, v6, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v2, 0x54

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x6b

    invoke-direct {v1, v7, v2, v6, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x6c

    invoke-direct {v1, v7, v2, v6, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x6d

    invoke-direct {v1, v7, v2, v6, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZLcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    aput-object v1, v0, v9

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0xba

    const/16 v3, 0x71

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v2, 0x58

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0xb7

    const/16 v3, 0x72

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v2, 0x59

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0xb8

    const/16 v3, 0x73

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0xb9

    const/16 v3, 0x74

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0x87

    const/16 v3, 0x75

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    const/16 v2, 0xe6

    const/16 v3, 0x76

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IILcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry-IA;)V

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/hdmi/HdmiCecKeycode;->KEYCODE_ENTRIES:[Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    return-void
.end method

.method public static androidKeyToCecKey(I)[B
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/server/hdmi/HdmiCecKeycode;->KEYCODE_ENTRIES:[Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-static {v1, p0}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->-$$Nest$mtoCecKeycodeAndParamIfMatched(Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;I)[B

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static cecKeycodeAndParamsToAndroidKey([B)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/server/hdmi/HdmiCecKeycode;->KEYCODE_ENTRIES:[Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    array-length v2, v1

    const/4 v3, -0x1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-static {v1, p0}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->-$$Nest$mtoAndroidKeycodeIfMatched(Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;[B)I

    move-result v1

    if-eq v1, v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static getKeycodeType(B)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    packed-switch p0, :pswitch_data_6

    const-string p0, "Unknown"

    return-object p0

    :pswitch_0
    const-string p0, "Function key"

    return-object p0

    :pswitch_1
    const-string p0, "Power on"

    return-object p0

    :pswitch_2
    const-string p0, "Power off"

    return-object p0

    :pswitch_3
    const-string p0, "Power toggle"

    return-object p0

    :pswitch_4
    const-string p0, "Functional"

    return-object p0

    :pswitch_5
    const-string p0, "Timer"

    return-object p0

    :pswitch_6
    const-string p0, "Media"

    return-object p0

    :pswitch_7
    const-string p0, "Volume mute"

    return-object p0

    :pswitch_8
    const-string p0, "Volume down"

    return-object p0

    :pswitch_9
    const-string p0, "Volume up"

    return-object p0

    :pswitch_a
    const-string p0, "Power"

    return-object p0

    :pswitch_b
    const-string p0, "Channel"

    return-object p0

    :pswitch_c
    const-string p0, "Number"

    return-object p0

    :pswitch_d
    const-string p0, "General"

    return-object p0

    :pswitch_e
    const-string p0, "Navigation"

    return-object p0

    :pswitch_f
    const-string p0, "Select"

    return-object p0

    :cond_0
    :pswitch_10
    const-string p0, "Menu"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2f
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_f
        :pswitch_f
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_e
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x40
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x50
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_d
        :pswitch_f
        :pswitch_f
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x60
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x71
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
    .end packed-switch
.end method

.method public static getMuteKey(Z)I
    .locals 0

    const/16 p0, 0x43

    return p0
.end method

.method public static intToSingleByteArray(I)[B
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static isRepeatableKey(I)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lcom/android/server/hdmi/HdmiCecKeycode;->KEYCODE_ENTRIES:[Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-static {v2, p0}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->-$$Nest$misRepeatableIfMatched(Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;I)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static isSupportedKeycode(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecKeycode;->androidKeyToCecKey(I)[B

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVolumeKeycode(I)Z
    .locals 2

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecKeycode;->androidKeyToCecKey(I)[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecKeycode;->isSupportedKeycode(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x41

    if-eq v0, p0, :cond_0

    const/16 p0, 0x42

    if-eq v0, p0, :cond_0

    const/16 p0, 0x43

    if-eq v0, p0, :cond_0

    const/16 p0, 0x65

    if-eq v0, p0, :cond_0

    const/16 p0, 0x66

    if-ne v0, p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method
