.class public final Lcom/android/systemui/dreams/complication/ComplicationViewModelProvider;
.super Landroidx/lifecycle/ViewModelProvider;
.source "ComplicationViewModelProvider.java"


# direct methods
.method public constructor <init>(Landroidx/lifecycle/ViewModelStore;Lcom/android/systemui/dreams/complication/ComplicationViewModel;)V
    .locals 2

    new-instance v0, Lcom/android/systemui/dreams/complication/dagger/DaggerViewModelProviderFactory;

    new-instance v1, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lcom/android/systemui/user/CreateUserActivity$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/android/systemui/dreams/complication/dagger/DaggerViewModelProviderFactory;-><init>(Lcom/android/systemui/dreams/complication/dagger/DaggerViewModelProviderFactory$ViewModelCreator;)V

    invoke-direct {p0, p1, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    return-void
.end method
