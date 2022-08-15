.class public final synthetic Lcom/android/server/companion/PersistentDataStore$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Collection;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Collection;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/PersistentDataStore$$ExternalSyntheticLambda1;->f$0:Ljava/util/Collection;

    iput-object p2, p0, Lcom/android/server/companion/PersistentDataStore$$ExternalSyntheticLambda1;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/companion/PersistentDataStore$$ExternalSyntheticLambda1;->f$0:Ljava/util/Collection;

    iget-object p0, p0, Lcom/android/server/companion/PersistentDataStore$$ExternalSyntheticLambda1;->f$1:Ljava/util/Map;

    check-cast p1, Ljava/io/FileOutputStream;

    invoke-static {v0, p0, p1}, Lcom/android/server/companion/PersistentDataStore;->$r8$lambda$Ajn8ESQxjhTZuM3r7tHEXDXvC5w(Ljava/util/Collection;Ljava/util/Map;Ljava/io/FileOutputStream;)V

    return-void
.end method
