.class public final synthetic Lcom/android/wm/shell/compatui/CompatUIController$CompatUIImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/compatui/CompatUIController$CompatUIImpl;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/compatui/CompatUIController$CompatUIImpl;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIController$CompatUIImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/compatui/CompatUIController$CompatUIImpl;

    iput-boolean p2, p0, Lcom/android/wm/shell/compatui/CompatUIController$CompatUIImpl$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController$CompatUIImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/compatui/CompatUIController$CompatUIImpl;

    iget-boolean p0, p0, Lcom/android/wm/shell/compatui/CompatUIController$CompatUIImpl$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v0, v0, Lcom/android/wm/shell/compatui/CompatUIController$CompatUIImpl;->this$0:Lcom/android/wm/shell/compatui/CompatUIController;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/compatui/CompatUIController;->onKeyguardShowingChanged(Z)V

    return-void
.end method
