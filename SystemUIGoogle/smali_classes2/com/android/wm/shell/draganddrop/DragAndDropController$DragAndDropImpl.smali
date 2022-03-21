.class Lcom/android/wm/shell/draganddrop/DragAndDropController$DragAndDropImpl;
.super Ljava/lang/Object;
.source "DragAndDropController.java"

# interfaces
.implements Lcom/android/wm/shell/draganddrop/DragAndDrop;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/draganddrop/DragAndDropController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragAndDropImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;


# direct methods
.method public static synthetic $r8$lambda$YCWPYiXqTCDjPp161UNO3pL2Goo(Lcom/android/wm/shell/draganddrop/DragAndDropController$DragAndDropImpl;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropController$DragAndDropImpl;->lambda$onConfigChanged$1(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZUwB-sncsxGJYROSaNQvLH3fs2E(Lcom/android/wm/shell/draganddrop/DragAndDropController$DragAndDropImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropController$DragAndDropImpl;->lambda$onThemeChanged$0()V

    return-void
.end method

.method private constructor <init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$DragAndDropImpl;->this$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/draganddrop/DragAndDropController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropController$DragAndDropImpl;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;)V

    return-void
.end method

.method private synthetic lambda$onConfigChanged$1(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$DragAndDropImpl;->this$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->access$200(Lcom/android/wm/shell/draganddrop/DragAndDropController;Landroid/content/res/Configuration;)V

    return-void
.end method

.method private synthetic lambda$onThemeChanged$0()V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$DragAndDropImpl;->this$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    invoke-static {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->access$300(Lcom/android/wm/shell/draganddrop/DragAndDropController;)V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$DragAndDropImpl;->this$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    invoke-static {v0}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->access$100(Lcom/android/wm/shell/draganddrop/DragAndDropController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/draganddrop/DragAndDropController$DragAndDropImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropController$DragAndDropImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController$DragAndDropImpl;Landroid/content/res/Configuration;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onThemeChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$DragAndDropImpl;->this$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    invoke-static {v0}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->access$100(Lcom/android/wm/shell/draganddrop/DragAndDropController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/draganddrop/DragAndDropController$DragAndDropImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/draganddrop/DragAndDropController$DragAndDropImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController$DragAndDropImpl;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
