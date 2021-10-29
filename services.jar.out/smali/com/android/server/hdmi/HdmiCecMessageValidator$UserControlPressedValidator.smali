.class Lcom/android/server/hdmi/HdmiCecMessageValidator$UserControlPressedValidator;
.super Ljava/lang/Object;
.source "HdmiCecMessageValidator.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecMessageValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserControlPressedValidator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$UserControlPressedValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$UserControlPressedValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;)V

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .locals 4

    array-length v0, p1

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    array-length v0, p1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    return v3

    :cond_1
    aget-byte v0, p1, v3

    sparse-switch v0, :sswitch_data_0

    return v3

    :sswitch_0
    array-length v3, p1

    if-lt v3, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$UserControlPressedValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    invoke-static {v1, p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$3500(Lcom/android/server/hdmi/HdmiCecMessageValidator;[BI)Z

    move-result v1

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$1700(Z)I

    move-result v1

    goto :goto_0

    :cond_2
    nop

    :goto_0
    return v1

    :sswitch_1
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$UserControlPressedValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    aget-byte v2, p1, v2

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$3300(Lcom/android/server/hdmi/HdmiCecMessageValidator;I)Z

    move-result v1

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$1700(Z)I

    move-result v1

    return v1

    :sswitch_2
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$UserControlPressedValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    aget-byte v2, p1, v2

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$3700(Lcom/android/server/hdmi/HdmiCecMessageValidator;I)Z

    move-result v1

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$1700(Z)I

    move-result v1

    return v1

    :sswitch_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$UserControlPressedValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    aget-byte v2, p1, v2

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$3600(Lcom/android/server/hdmi/HdmiCecMessageValidator;I)Z

    move-result v1

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$1700(Z)I

    move-result v1

    return v1

    :sswitch_data_0
    .sparse-switch
        0x56 -> :sswitch_3
        0x57 -> :sswitch_2
        0x60 -> :sswitch_1
        0x67 -> :sswitch_0
    .end sparse-switch
.end method
