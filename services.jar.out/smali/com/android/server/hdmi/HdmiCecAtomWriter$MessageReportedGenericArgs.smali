.class Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;
.super Ljava/lang/Object;
.source "HdmiCecAtomWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecAtomWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageReportedGenericArgs"
.end annotation


# instance fields
.field final mDestinationLogicalAddress:I

.field final mDirection:I

.field final mInitiatorLogicalAddress:I

.field final mOpcode:I

.field final mSendMessageResult:I

.field final mUid:I

.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecAtomWriter;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecAtomWriter;IIIIII)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->this$0:Lcom/android/server/hdmi/HdmiCecAtomWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mUid:I

    iput p3, p0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mDirection:I

    iput p4, p0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mInitiatorLogicalAddress:I

    iput p5, p0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mDestinationLogicalAddress:I

    iput p6, p0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mOpcode:I

    iput p7, p0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mSendMessageResult:I

    return-void
.end method
