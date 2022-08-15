.class public final synthetic Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    check-cast p1, Landroid/service/ambientcontext/IAmbientContextDetectionService;

    invoke-static {p0, p1}, Lcom/android/server/ambientcontext/RemoteAmbientContextDetectionService;->$r8$lambda$gZjcdFlIXVKh4gW0G7EQJaz7yAg(Ljava/lang/String;Landroid/service/ambientcontext/IAmbientContextDetectionService;)V

    return-void
.end method
