.class public interface abstract Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController$Factory;
.super Ljava/lang/Object;
.source "SuggestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/SuggestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract create(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/ContentSuggestionsServiceWrapper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "userProfileDataContext",
            "uiExecutor",
            "asyncExecutor",
            "loggingExecutor"
        }
    .end annotation
.end method
