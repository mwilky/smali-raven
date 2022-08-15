.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/pm/ApkChecksums$Injector$Producer;


# instance fields
.field public final synthetic f$0:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda21;->f$0:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final produce()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda21;->f$0:Landroid/os/Handler;

    invoke-static {p0}, Lcom/android/server/pm/PackageManagerService;->$r8$lambda$_0bCYRF2EP30LRMFF1DOW0yMFwc(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method
