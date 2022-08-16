.class public final synthetic Lcom/google/android/systemui/fingerprint/HbmRequest$enable$1$1;
.super Ljava/lang/Object;
.source "UdfpsHbmController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/fingerprint/HbmRequest$enable$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/fingerprint/HbmRequest;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/fingerprint/HbmRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/fingerprint/HbmRequest$enable$1$1;->this$0:Lcom/google/android/systemui/fingerprint/HbmRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/fingerprint/HbmRequest$enable$1$1;->this$0:Lcom/google/android/systemui/fingerprint/HbmRequest;

    iget-object p0, p0, Lcom/google/android/systemui/fingerprint/HbmRequest;->onHbmEnabled:Ljava/lang/Runnable;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    if-nez p0, :cond_1

    const-string p0, "UdfpsHbmController"

    const-string v0, "doEnableHbm | onHbmEnabled is null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
