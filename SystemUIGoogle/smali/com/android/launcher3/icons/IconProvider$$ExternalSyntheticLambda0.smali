.class public final synthetic Lcom/android/launcher3/icons/IconProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/icons/IconProvider;

.field public final synthetic f$1:Landroid/content/pm/ActivityInfo;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/icons/IconProvider;Landroid/content/pm/ActivityInfo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/icons/IconProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/icons/IconProvider;

    iput-object p2, p0, Lcom/android/launcher3/icons/IconProvider$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/ActivityInfo;

    iput p3, p0, Lcom/android/launcher3/icons/IconProvider$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/icons/IconProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/icons/IconProvider;

    iget-object v1, p0, Lcom/android/launcher3/icons/IconProvider$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/ActivityInfo;

    iget p0, p0, Lcom/android/launcher3/icons/IconProvider$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/icons/IconProvider;->$r8$lambda$kAHCALh0e24_mhthYcY_3qohKLM(Lcom/android/launcher3/icons/IconProvider;Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
