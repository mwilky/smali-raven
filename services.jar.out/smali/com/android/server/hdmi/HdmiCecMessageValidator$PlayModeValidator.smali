.class Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;
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
    name = "PlayModeValidator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;)V

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .locals 2

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    const/4 v1, 0x0

    aget-byte v1, p1, v1

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$3300(Lcom/android/server/hdmi/HdmiCecMessageValidator;I)Z

    move-result v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$1700(Z)I

    move-result v0

    return v0
.end method
