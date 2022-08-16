.class Lcom/android/systemui/biometrics/AuthContainerView$Config;
.super Ljava/lang/Object;
.source "AuthContainerView.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/AuthContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field public mCallback:Lcom/android/systemui/biometrics/AuthDialogCallback;

.field public mContext:Landroid/content/Context;

.field public mOpPackageName:Ljava/lang/String;

.field public mOperationId:J

.field public mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

.field public mRequestId:J

.field public mRequireConfirmation:Z

.field public mSensorIds:[I

.field public mSkipAnimation:Z

.field public mSkipIntro:Z

.field public mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mRequestId:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mSkipAnimation:Z

    return-void
.end method
