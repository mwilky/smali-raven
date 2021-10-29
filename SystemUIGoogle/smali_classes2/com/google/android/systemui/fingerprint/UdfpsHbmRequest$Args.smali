.class Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;
.super Ljava/lang/Object;
.source "UdfpsHbmRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Args"
.end annotation


# instance fields
.field public final displayId:I

.field public final hbmType:I

.field public final onHbmEnabled:Ljava/lang/Runnable;

.field public final surface:Landroid/view/Surface;


# direct methods
.method constructor <init>(IILandroid/view/Surface;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;->displayId:I

    iput p2, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;->hbmType:I

    iput-object p3, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;->surface:Landroid/view/Surface;

    iput-object p4, p0, Lcom/google/android/systemui/fingerprint/UdfpsHbmRequest$Args;->onHbmEnabled:Ljava/lang/Runnable;

    return-void
.end method
