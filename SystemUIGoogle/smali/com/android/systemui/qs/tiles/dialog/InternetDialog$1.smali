.class Lcom/android/systemui/qs/tiles/dialog/InternetDialog$1;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "InternetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/dialog/InternetDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/tiles/dialog/InternetDialogFactory;Lcom/android/systemui/qs/tiles/dialog/InternetDialogController;ZZZLcom/android/internal/logging/UiEventLogger;Landroid/os/Handler;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/dialog/InternetDialog;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/dialog/InternetDialog$1;->this$0:Lcom/android/systemui/qs/tiles/dialog/InternetDialog;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
