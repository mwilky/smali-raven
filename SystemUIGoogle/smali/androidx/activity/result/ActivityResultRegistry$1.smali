.class Landroidx/activity/result/ActivityResultRegistry$1;
.super Ljava/lang/Object;
.source "ActivityResultRegistry.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field final synthetic this$0:Landroidx/activity/result/ActivityResultRegistry;

.field final synthetic val$callback:Landroidx/activity/result/ActivityResultCallback;

.field final synthetic val$contract:Landroidx/activity/result/contract/ActivityResultContract;

.field final synthetic val$key:Ljava/lang/String;


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 3

    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->this$0:Landroidx/activity/result/ActivityResultRegistry;

    iget-object p1, p1, Landroidx/activity/result/ActivityResultRegistry;->mKeyToCallback:Ljava/util/Map;

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->val$key:Ljava/lang/String;

    new-instance v0, Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;

    iget-object v1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->val$callback:Landroidx/activity/result/ActivityResultCallback;

    iget-object v2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->val$contract:Landroidx/activity/result/contract/ActivityResultContract;

    invoke-direct {v0, v1, v2}, Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;-><init>(Landroidx/activity/result/ActivityResultCallback;Landroidx/activity/result/contract/ActivityResultContract;)V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->this$0:Landroidx/activity/result/ActivityResultRegistry;

    iget-object p1, p1, Landroidx/activity/result/ActivityResultRegistry;->mParsedPendingResults:Ljava/util/Map;

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->val$key:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->this$0:Landroidx/activity/result/ActivityResultRegistry;

    iget-object p1, p1, Landroidx/activity/result/ActivityResultRegistry;->mParsedPendingResults:Ljava/util/Map;

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->val$key:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->this$0:Landroidx/activity/result/ActivityResultRegistry;

    iget-object p2, p2, Landroidx/activity/result/ActivityResultRegistry;->mParsedPendingResults:Ljava/util/Map;

    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$1;->val$key:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->val$callback:Landroidx/activity/result/ActivityResultCallback;

    invoke-interface {p2, p1}, Landroidx/activity/result/ActivityResultCallback;->onActivityResult(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->this$0:Landroidx/activity/result/ActivityResultRegistry;

    iget-object p1, p1, Landroidx/activity/result/ActivityResultRegistry;->mPendingResults:Landroid/os/Bundle;

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->val$key:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/activity/result/ActivityResult;

    if-eqz p1, :cond_3

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->this$0:Landroidx/activity/result/ActivityResultRegistry;

    iget-object p2, p2, Landroidx/activity/result/ActivityResultRegistry;->mPendingResults:Landroid/os/Bundle;

    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$1;->val$key:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->val$callback:Landroidx/activity/result/ActivityResultCallback;

    iget-object p0, p0, Landroidx/activity/result/ActivityResultRegistry$1;->val$contract:Landroidx/activity/result/contract/ActivityResultContract;

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v0

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroidx/activity/result/contract/ActivityResultContract;->parseResult(ILandroid/content/Intent;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Landroidx/activity/result/ActivityResultCallback;->onActivityResult(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->this$0:Landroidx/activity/result/ActivityResultRegistry;

    iget-object p1, p1, Landroidx/activity/result/ActivityResultRegistry;->mKeyToCallback:Ljava/util/Map;

    iget-object p0, p0, Landroidx/activity/result/ActivityResultRegistry$1;->val$key:Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->this$0:Landroidx/activity/result/ActivityResultRegistry;

    iget-object p0, p0, Landroidx/activity/result/ActivityResultRegistry$1;->val$key:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroidx/activity/result/ActivityResultRegistry;->unregister(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
