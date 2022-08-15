.class public final synthetic Lcom/android/server/cloudsearch/CloudSearchPerUserService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/cloudsearch/CloudSearchPerUserService;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/cloudsearch/CloudSearchPerUserService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/cloudsearch/CloudSearchPerUserService;

    iput-object p2, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/cloudsearch/CloudSearchPerUserService;

    iget-object p0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->$r8$lambda$Fx8QmpEVW4RxqjoTu0AUndonndc(Lcom/android/server/cloudsearch/CloudSearchPerUserService;Ljava/lang/String;)V

    return-void
.end method
