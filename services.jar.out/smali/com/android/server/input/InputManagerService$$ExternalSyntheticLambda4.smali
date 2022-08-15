.class public final synthetic Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;


# instance fields
.field public final synthetic f$0:Landroid/view/InputDevice;

.field public final synthetic f$1:Ljava/util/Locale;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/view/InputDevice;Ljava/util/Locale;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda4;->f$0:Landroid/view/InputDevice;

    iput-object p2, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda4;->f$1:Ljava/util/Locale;

    iput-object p3, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda4;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final visitKeyboardLayout(Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda4;->f$0:Landroid/view/InputDevice;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda4;->f$1:Ljava/util/Locale;

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$$ExternalSyntheticLambda4;->f$2:Ljava/util/List;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/input/InputManagerService;->$r8$lambda$y9OoOzcheSEYNhs-qAMovZqtmsI(Landroid/view/InputDevice;Ljava/util/Locale;Ljava/util/List;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V

    return-void
.end method
