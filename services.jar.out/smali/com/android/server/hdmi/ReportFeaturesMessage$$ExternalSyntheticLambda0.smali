.class public final synthetic Lcom/android/server/hdmi/ReportFeaturesMessage$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:[B


# direct methods
.method public synthetic constructor <init>(II[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/hdmi/ReportFeaturesMessage$$ExternalSyntheticLambda0;->f$0:I

    iput p2, p0, Lcom/android/server/hdmi/ReportFeaturesMessage$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/hdmi/ReportFeaturesMessage$$ExternalSyntheticLambda0;->f$2:[B

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/android/server/hdmi/ReportFeaturesMessage$$ExternalSyntheticLambda0;->f$0:I

    iget v1, p0, Lcom/android/server/hdmi/ReportFeaturesMessage$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/android/server/hdmi/ReportFeaturesMessage$$ExternalSyntheticLambda0;->f$2:[B

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/hdmi/ReportFeaturesMessage;->$r8$lambda$uLnCpwpu5pVQCsiKhs99yA-FXrI(II[BLjava/lang/Integer;)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method
