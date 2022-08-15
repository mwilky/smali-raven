.class public final synthetic Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/BackgroundDexOptService;

.field public final synthetic f$1:Lcom/android/server/pm/dex/DexoptOptions;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/BackgroundDexOptService;Lcom/android/server/pm/dex/DexoptOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/BackgroundDexOptService;

    iput-object p2, p0, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/pm/dex/DexoptOptions;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/pm/BackgroundDexOptService;

    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda3;->f$1:Lcom/android/server/pm/dex/DexoptOptions;

    invoke-static {v0, p0}, Lcom/android/server/pm/BackgroundDexOptService;->$r8$lambda$WFSIuiapo06I6TQdJMnXhIb_C-E(Lcom/android/server/pm/BackgroundDexOptService;Lcom/android/server/pm/dex/DexoptOptions;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
