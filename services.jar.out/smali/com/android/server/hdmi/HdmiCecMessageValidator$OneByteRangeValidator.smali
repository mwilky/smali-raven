.class public Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;
.super Ljava/lang/Object;
.source "HdmiCecMessageValidator.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecMessageValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OneByteRangeValidator"
.end annotation


# instance fields
.field public final mMaxValue:I

.field public final mMinValue:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;->mMinValue:I

    iput p2, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;->mMaxValue:I

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .locals 2

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const/4 v0, 0x0

    aget-byte p1, p1, v0

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;->mMinValue:I

    iget p0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;->mMaxValue:I

    invoke-static {p1, v0, p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisWithinRange(III)Z

    move-result p0

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result p0

    return p0
.end method
