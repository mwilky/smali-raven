.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutPackage;

.field public final synthetic f$1:Lcom/android/server/pm/ShortcutService;

.field public final synthetic f$2:Landroid/content/res/Resources;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutPackage;Lcom/android/server/pm/ShortcutService;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda25;->f$0:Lcom/android/server/pm/ShortcutPackage;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda25;->f$1:Lcom/android/server/pm/ShortcutService;

    iput-object p3, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda25;->f$2:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda25;->f$0:Lcom/android/server/pm/ShortcutPackage;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda25;->f$1:Lcom/android/server/pm/ShortcutService;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda25;->f$2:Landroid/content/res/Resources;

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/pm/ShortcutPackage;->$r8$lambda$EGVlxtkS7RgkSlm2JwIH0SvSBbs(Lcom/android/server/pm/ShortcutPackage;Lcom/android/server/pm/ShortcutService;Landroid/content/res/Resources;Landroid/content/pm/ShortcutInfo;)V

    return-void
.end method
