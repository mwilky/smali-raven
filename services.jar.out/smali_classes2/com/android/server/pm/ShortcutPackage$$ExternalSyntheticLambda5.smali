.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda5;->f$0:J

    iput p3, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda5;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-wide v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda5;->f$0:J

    iget p0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda5;->f$1:I

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/pm/ShortcutPackage;->$r8$lambda$upfp9saLcXb85_833Mx0r2UrNL0(JILandroid/content/pm/ShortcutInfo;)V

    return-void
.end method
