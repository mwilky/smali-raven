.class public final synthetic Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/os/Message;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda2;->f$0:Landroid/os/Message;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda2;->f$0:Landroid/os/Message;

    check-cast p1, Landroid/app/ActivityManagerInternal$BindServiceEventListener;

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->$r8$lambda$tnqzrvfbfhw0qbzF4Zpa6LsnUNU(Landroid/os/Message;Landroid/app/ActivityManagerInternal$BindServiceEventListener;)V

    return-void
.end method
