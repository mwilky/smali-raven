.class Landroidx/leanback/widget/SearchBar$7;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/widget/SearchBar;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/widget/SearchBar;


# direct methods
.method constructor <init>(Landroidx/leanback/widget/SearchBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Landroidx/leanback/widget/SearchBar$7;->this$0:Landroidx/leanback/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "hasFocus"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object p1, p0, Landroidx/leanback/widget/SearchBar$7;->this$0:Landroidx/leanback/widget/SearchBar;

    invoke-virtual {p1}, Landroidx/leanback/widget/SearchBar;->hideNativeKeyboard()V

    iget-object p1, p0, Landroidx/leanback/widget/SearchBar$7;->this$0:Landroidx/leanback/widget/SearchBar;

    iget-boolean v0, p1, Landroidx/leanback/widget/SearchBar;->mAutoStartRecognition:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/leanback/widget/SearchBar;->startRecognition()V

    iget-object p1, p0, Landroidx/leanback/widget/SearchBar$7;->this$0:Landroidx/leanback/widget/SearchBar;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/leanback/widget/SearchBar;->mAutoStartRecognition:Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/leanback/widget/SearchBar$7;->this$0:Landroidx/leanback/widget/SearchBar;

    invoke-virtual {p1}, Landroidx/leanback/widget/SearchBar;->stopRecognition()V

    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/leanback/widget/SearchBar$7;->this$0:Landroidx/leanback/widget/SearchBar;

    invoke-virtual {p0, p2}, Landroidx/leanback/widget/SearchBar;->updateUi(Z)V

    return-void
.end method
