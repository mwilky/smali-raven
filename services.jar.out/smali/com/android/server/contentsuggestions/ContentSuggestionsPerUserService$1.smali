.class public Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService$1;
.super Ljava/lang/Object;
.source "ContentSuggestionsPerUserService.java"

# interfaces
.implements Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->ensureRemoteServiceLocked()Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;


# direct methods
.method public constructor <init>(Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService$1;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceDied(Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;)V
    .locals 1

    invoke-static {}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "remote content suggestions service died"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService$1;->this$0:Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;

    invoke-static {p0}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;->-$$Nest$mupdateRemoteServiceLocked(Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService;)V

    return-void
.end method

.method public bridge synthetic onServiceDied(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;

    invoke-virtual {p0, p1}, Lcom/android/server/contentsuggestions/ContentSuggestionsPerUserService$1;->onServiceDied(Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;)V

    return-void
.end method
