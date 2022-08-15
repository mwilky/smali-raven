.class public Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;
.super Ljava/lang/Object;
.source "RecoverySystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/recoverysystem/RecoverySystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RebootPreparationError"
.end annotation


# instance fields
.field public final mProviderErrorCode:I

.field public final mRebootErrorCode:I
    .annotation build Landroid/os/RecoverySystem$ResumeOnRebootRebootErrorCode;
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;->mRebootErrorCode:I

    iput p2, p0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;->mProviderErrorCode:I

    return-void
.end method


# virtual methods
.method public getErrorCodeForMetrics()I
    .locals 1

    iget v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;->mRebootErrorCode:I

    iget p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$RebootPreparationError;->mProviderErrorCode:I

    add-int/2addr v0, p0

    return v0
.end method
