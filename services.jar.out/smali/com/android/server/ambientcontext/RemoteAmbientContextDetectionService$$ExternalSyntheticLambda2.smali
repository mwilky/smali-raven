.class public final synthetic Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/os/IBinder;

    invoke-static {p1}, Landroid/service/ambientcontext/IAmbientContextDetectionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/ambientcontext/IAmbientContextDetectionService;

    move-result-object p0

    return-object p0
.end method