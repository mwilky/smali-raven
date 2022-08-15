.class public final synthetic Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutService;

.field public final synthetic f$1:Lcom/android/server/pm/ShortcutUser;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda21;->f$0:Lcom/android/server/pm/ShortcutService;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda21;->f$1:Lcom/android/server/pm/ShortcutUser;

    iput p3, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda21;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda21;->f$0:Lcom/android/server/pm/ShortcutService;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda21;->f$1:Lcom/android/server/pm/ShortcutUser;

    iget p0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda21;->f$2:I

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/pm/ShortcutService;->$r8$lambda$xzx_7n_mrcSi1GqSkswffUdehX8(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutUser;ILandroid/content/pm/ApplicationInfo;)V

    return-void
.end method
