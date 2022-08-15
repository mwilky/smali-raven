.class public final synthetic Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;


# instance fields
.field public final synthetic f$0:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda0;->f$0:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final isValidThread()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda0;->f$0:Landroid/os/Handler;

    invoke-static {p0}, Lcom/android/server/companion/virtual/InputController;->$r8$lambda$f5rdGxKmzTxubwSBNCJHgvDMIwg(Landroid/os/Handler;)Z

    move-result p0

    return p0
.end method
