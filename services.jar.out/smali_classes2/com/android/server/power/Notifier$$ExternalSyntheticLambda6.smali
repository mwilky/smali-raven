.class public final synthetic Lcom/android/server/power/Notifier$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/IWakeLockCallback;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/os/IWakeLockCallback;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda6;->f$0:Landroid/os/IWakeLockCallback;

    iput-boolean p2, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda6;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda6;->f$0:Landroid/os/IWakeLockCallback;

    iget-boolean p0, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda6;->f$1:Z

    invoke-static {v0, p0}, Lcom/android/server/power/Notifier;->$r8$lambda$Lsm4UZVwpig2M8WbYEtV0DDUf8c(Landroid/os/IWakeLockCallback;Z)V

    return-void
.end method
