.class final Lcom/google/android/systemui/columbus/sensors/GestureController$1;
.super Lkotlin/jvm/internal/Lambda;
.source "GestureController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/sensors/GestureController;-><init>(Lcom/google/android/systemui/columbus/sensors/GestureSensor;Ljava/util/Set;Lcom/android/systemui/statusbar/commandline/CommandRegistry;Lcom/android/internal/logging/UiEventLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/android/systemui/statusbar/commandline/Command;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/sensors/GestureController;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/sensors/GestureController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/GestureController$1;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/android/systemui/columbus/sensors/GestureController$ColumbusCommand;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController$1;->this$0:Lcom/google/android/systemui/columbus/sensors/GestureController;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/columbus/sensors/GestureController$ColumbusCommand;-><init>(Lcom/google/android/systemui/columbus/sensors/GestureController;)V

    return-object v0
.end method
