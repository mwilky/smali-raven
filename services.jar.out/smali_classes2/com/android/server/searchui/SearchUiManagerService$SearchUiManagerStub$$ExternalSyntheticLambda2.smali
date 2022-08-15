.class public final synthetic Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/app/search/SearchSessionId;


# direct methods
.method public synthetic constructor <init>(Landroid/app/search/SearchSessionId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda2;->f$0:Landroid/app/search/SearchSessionId;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub$$ExternalSyntheticLambda2;->f$0:Landroid/app/search/SearchSessionId;

    check-cast p1, Lcom/android/server/searchui/SearchUiPerUserService;

    invoke-static {p0, p1}, Lcom/android/server/searchui/SearchUiManagerService$SearchUiManagerStub;->$r8$lambda$yc_8InrqGrzCGWbI7O5RIk5d0iU(Landroid/app/search/SearchSessionId;Lcom/android/server/searchui/SearchUiPerUserService;)V

    return-void
.end method
