.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda11;->f$0:Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda11;->f$0:Lcom/android/internal/infra/AndroidFuture;

    check-cast p1, Landroid/app/appsearch/AppSearchResult;

    invoke-static {v0, p1}, Lcom/android/server/pm/ShortcutPackage;->lambda$pushDynamicShortcut$1(Lcom/android/internal/infra/AndroidFuture;Landroid/app/appsearch/AppSearchResult;)V

    return-void
.end method
