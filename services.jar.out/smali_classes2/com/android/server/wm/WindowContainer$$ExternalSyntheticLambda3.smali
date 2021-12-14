.class public final synthetic Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskDisplayArea;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskDisplayArea;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/TaskDisplayArea;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->clearBackgroundColor()V

    return-void
.end method
