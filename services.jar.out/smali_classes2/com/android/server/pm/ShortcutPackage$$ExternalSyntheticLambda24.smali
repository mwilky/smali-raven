.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutPackage;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutPackage;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda24;->f$0:Lcom/android/server/pm/ShortcutPackage;

    iput-wide p2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda24;->f$1:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda24;->f$0:Lcom/android/server/pm/ShortcutPackage;

    iget-wide v1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda24;->f$1:J

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/pm/ShortcutPackage;->$r8$lambda$rRPuYClZ-6cyylVAnISOI-y1Uto(Lcom/android/server/pm/ShortcutPackage;JLandroid/content/pm/ShortcutInfo;)V

    return-void
.end method
