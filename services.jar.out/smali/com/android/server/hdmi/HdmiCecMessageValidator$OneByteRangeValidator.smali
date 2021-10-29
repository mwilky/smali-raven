.class Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;
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
    name = "OneByteRangeValidator"
.end annotation


# instance fields
.field private final mMaxValue:I

.field private final mMinValue:I

.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;->mMinValue:I

    iput p3, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;->mMaxValue:I

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .locals 4

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    const/4 v1, 0x0

    aget-byte v1, p1, v1

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;->mMinValue:I

    iget v3, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;->mMaxValue:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$1800(Lcom/android/server/hdmi/HdmiCecMessageValidator;III)Z

    move-result v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$1700(Z)I

    move-result v0

    return v0
.end method
