.class public final synthetic Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic f$0:Landroid/app/contentsuggestions/SelectionsRequest;

.field public final synthetic f$1:Landroid/app/contentsuggestions/ISelectionsCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ISelectionsCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda2;->f$0:Landroid/app/contentsuggestions/SelectionsRequest;

    iput-object p2, p0, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda2;->f$1:Landroid/app/contentsuggestions/ISelectionsCallback;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda2;->f$0:Landroid/app/contentsuggestions/SelectionsRequest;

    iget-object p0, p0, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$$ExternalSyntheticLambda2;->f$1:Landroid/app/contentsuggestions/ISelectionsCallback;

    check-cast p1, Landroid/service/contentsuggestions/IContentSuggestionsService;

    invoke-static {v0, p0, p1}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;->$r8$lambda$FdTUPx3CZQ_9EDWfXe13q3KpnMA(Landroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ISelectionsCallback;Landroid/service/contentsuggestions/IContentSuggestionsService;)V

    return-void
.end method
