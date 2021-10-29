.class Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest;
.super Ljava/lang/Object;
.source "UdfpsHbmRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;
    }
.end annotation


# instance fields
.field public final args:Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;

.field public beganEnablingHbm:Z

.field public finishedEnablingHbm:Z


# direct methods
.method constructor <init>(IILandroid/view/Surface;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;-><init>(IILandroid/view/Surface;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest;->args:Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;

    return-void
.end method
