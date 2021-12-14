.class public final Lcom/google/android/systemui/columbus/sensors/GestureController$softGateListener$1;
.super Ljava/lang/Object;
.source "GestureController.kt"

# interfaces
.implements Lcom/google/android/systemui/columbus/gates/Gate$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/sensors/GestureController;-><init>(Lcom/google/android/systemui/columbus/sensors/GestureSensor;Ljava/util/Set;Lcom/android/systemui/statusbar/commandline/CommandRegistry;Lcom/android/internal/logging/UiEventLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGateChanged(Lcom/google/android/systemui/columbus/gates/Gate;)V
    .locals 0

    const-string p0, "gate"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
