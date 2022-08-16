.class public final synthetic Lcom/android/wm/shell/pip/tv/TvPipMenuController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/wm/shell/pip/PipMediaController$ActionListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip/tv/TvPipMenuController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipMenuController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    return-void
.end method


# virtual methods
.method public final onMediaActionsChanged(Ljava/util/List;)V
    .locals 3

    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/RemoteAction;

    invoke-virtual {v1}, Landroid/app/RemoteAction;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mMediaActions:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->mCloseAction:Landroid/app/RemoteAction;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/wm/shell/pip/tv/TvPipMenuController;->updateAdditionalActionsList(Ljava/util/List;Ljava/util/List;Landroid/app/RemoteAction;)V

    return-void
.end method
