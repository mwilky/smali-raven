.class public final Lcom/android/systemui/wmshell/WMShell$15;
.super Ljava/lang/Object;
.source "WMShell.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic val$dragAndDrop:Lcom/android/wm/shell/draganddrop/DragAndDrop;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/draganddrop/DragAndDrop;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShell$15;->val$dragAndDrop:Lcom/android/wm/shell/draganddrop/DragAndDrop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$15;->val$dragAndDrop:Lcom/android/wm/shell/draganddrop/DragAndDrop;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/draganddrop/DragAndDrop;->onConfigChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onThemeChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$15;->val$dragAndDrop:Lcom/android/wm/shell/draganddrop/DragAndDrop;

    invoke-interface {p0}, Lcom/android/wm/shell/draganddrop/DragAndDrop;->onThemeChanged()V

    return-void
.end method
