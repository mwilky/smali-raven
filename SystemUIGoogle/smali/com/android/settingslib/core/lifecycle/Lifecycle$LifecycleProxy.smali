.class Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;
.super Ljava/lang/Object;
.source "Lifecycle.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/core/lifecycle/Lifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LifecycleProxy"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;->this$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLifecycleEvent(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_ANY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    sget-object p1, Lcom/android/settingslib/core/lifecycle/Lifecycle$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    const-string p0, "LifecycleObserver"

    const-string p1, "Should not receive an \'ANY\' event!"

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :pswitch_1
    iget-object p0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;->this$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    iget-object p1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    if-ge p2, p1, :cond_5

    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    instance-of v1, v0, Lcom/android/settingslib/core/lifecycle/events/OnDestroy;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/settingslib/core/lifecycle/events/OnDestroy;

    invoke-interface {v0}, Lcom/android/settingslib/core/lifecycle/events/OnDestroy;->onDestroy()V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;->this$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    iget-object p1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_1
    if-ge p2, p1, :cond_5

    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    instance-of v1, v0, Lcom/android/settingslib/core/lifecycle/events/OnStop;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/settingslib/core/lifecycle/events/OnStop;

    invoke-interface {v0}, Lcom/android/settingslib/core/lifecycle/events/OnStop;->onStop()V

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :pswitch_3
    iget-object p0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;->this$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    iget-object p1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_2
    if-ge p2, p1, :cond_5

    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    instance-of v1, v0, Lcom/android/settingslib/core/lifecycle/events/OnPause;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/android/settingslib/core/lifecycle/events/OnPause;

    invoke-interface {v0}, Lcom/android/settingslib/core/lifecycle/events/OnPause;->onPause()V

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :pswitch_4
    iget-object p0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;->this$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    iget-object p1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_3
    if-ge p2, p1, :cond_5

    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    instance-of v1, v0, Lcom/android/settingslib/core/lifecycle/events/OnResume;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/android/settingslib/core/lifecycle/events/OnResume;

    invoke-interface {v0}, Lcom/android/settingslib/core/lifecycle/events/OnResume;->onResume()V

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :pswitch_5
    iget-object p0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle$LifecycleProxy;->this$0:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    iget-object p1, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_4
    if-ge p2, p1, :cond_5

    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/Lifecycle;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/lifecycle/LifecycleObserver;

    instance-of v1, v0, Lcom/android/settingslib/core/lifecycle/events/OnStart;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/android/settingslib/core/lifecycle/events/OnStart;

    invoke-interface {v0}, Lcom/android/settingslib/core/lifecycle/events/OnStart;->onStart()V

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
