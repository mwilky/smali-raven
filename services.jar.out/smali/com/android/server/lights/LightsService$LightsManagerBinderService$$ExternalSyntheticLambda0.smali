.class public final synthetic Lcom/android/server/lights/LightsService$LightsManagerBinderService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/lights/LightsService$LightsManagerBinderService;

.field public final synthetic f$1:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/lights/LightsService$LightsManagerBinderService;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/lights/LightsService$LightsManagerBinderService;

    iput-object p2, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/lights/LightsService$LightsManagerBinderService;

    iget-object p0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    invoke-static {v0, p0}, Lcom/android/server/lights/LightsService$LightsManagerBinderService;->$r8$lambda$XDl_X5VWl2U5-tfES8W5Mh1_qjk(Lcom/android/server/lights/LightsService$LightsManagerBinderService;Landroid/os/IBinder;)V

    return-void
.end method
