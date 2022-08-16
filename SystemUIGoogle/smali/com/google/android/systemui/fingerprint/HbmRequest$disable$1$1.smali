.class public final synthetic Lcom/google/android/systemui/fingerprint/HbmRequest$disable$1$1;
.super Ljava/lang/Object;
.source "UdfpsHbmController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/fingerprint/HbmRequest$disable$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# instance fields
.field public final synthetic $onHbmDisabled:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/google/android/systemui/fingerprint/HbmRequest;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/fingerprint/HbmRequest;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/fingerprint/HbmRequest$disable$1$1;->this$0:Lcom/google/android/systemui/fingerprint/HbmRequest;

    iput-object p2, p0, Lcom/google/android/systemui/fingerprint/HbmRequest$disable$1$1;->$onHbmDisabled:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/fingerprint/HbmRequest$disable$1$1;->this$0:Lcom/google/android/systemui/fingerprint/HbmRequest;

    iget-object p0, p0, Lcom/google/android/systemui/fingerprint/HbmRequest$disable$1$1;->$onHbmDisabled:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/google/android/systemui/fingerprint/HbmRequest;->disable$onFinished-0(Lcom/google/android/systemui/fingerprint/HbmRequest;Ljava/lang/Runnable;)V

    return-void
.end method
