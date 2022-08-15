.class public final synthetic Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Landroid/content/IntentFilter;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroid/content/IntentFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda12;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda12;->f$1:Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda12;->f$0:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda12;->f$1:Landroid/content/IntentFilter;

    check-cast p1, Lcom/android/server/pm/ShortcutPackage;

    invoke-static {v0, p0, p1}, Lcom/android/server/pm/ShortcutService;->$r8$lambda$DVlclTb8XXOMuM2yYmogpc2NJeA(Ljava/util/List;Landroid/content/IntentFilter;Lcom/android/server/pm/ShortcutPackage;)V

    return-void
.end method
