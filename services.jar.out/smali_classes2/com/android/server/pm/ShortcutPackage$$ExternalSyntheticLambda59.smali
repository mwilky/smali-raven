.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda59;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutPackage;

.field public final synthetic f$1:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutPackage;Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda59;->f$0:Lcom/android/server/pm/ShortcutPackage;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda59;->f$1:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda59;->f$0:Lcom/android/server/pm/ShortcutPackage;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda59;->f$1:Ljava/util/Collection;

    check-cast p1, Landroid/app/appsearch/AppSearchSession;

    invoke-static {v0, p0, p1}, Lcom/android/server/pm/ShortcutPackage;->$r8$lambda$MghIbKY4kqQ9dsOZYEEDhIkNSd4(Lcom/android/server/pm/ShortcutPackage;Ljava/util/Collection;Landroid/app/appsearch/AppSearchSession;)V

    return-void
.end method