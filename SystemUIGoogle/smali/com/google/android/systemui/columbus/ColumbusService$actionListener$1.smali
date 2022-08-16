.class public final Lcom/google/android/systemui/columbus/ColumbusService$actionListener$1;
.super Ljava/lang/Object;
.source "ColumbusService.kt"

# interfaces
.implements Lcom/google/android/systemui/columbus/actions/Action$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/ColumbusService;-><init>(Ljava/util/List;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/systemui/columbus/sensors/GestureController;Lcom/google/android/systemui/columbus/PowerManagerWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/ColumbusService;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/ColumbusService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusService$actionListener$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActionAvailabilityChanged(Lcom/google/android/systemui/columbus/actions/Action;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusService$actionListener$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusService;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/ColumbusService;->updateSensorListener()V

    return-void
.end method
