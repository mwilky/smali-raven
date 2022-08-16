.class Lcom/google/android/settings/dream/DreamSetupFragment$DreamItem;
.super Ljava/lang/Object;
.source "DreamSetupFragment.java"

# interfaces
.implements Lcom/android/settings/dream/IDreamItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/settings/dream/DreamSetupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DreamItem"
.end annotation


# instance fields
.field private final mDreamInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

.field final synthetic this$0:Lcom/google/android/settings/dream/DreamSetupFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/settings/dream/DreamSetupFragment;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/settings/dream/DreamSetupFragment$DreamItem;->this$0:Lcom/google/android/settings/dream/DreamSetupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/settings/dream/DreamSetupFragment$DreamItem;->mDreamInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/settings/dream/DreamSetupFragment;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;Lcom/google/android/settings/dream/DreamSetupFragment$DreamItem-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/settings/dream/DreamSetupFragment$DreamItem;-><init>(Lcom/google/android/settings/dream/DreamSetupFragment;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)V

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/dream/DreamSetupFragment$DreamItem;->mDreamInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getPreviewImage()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/dream/DreamSetupFragment$DreamItem;->mDreamInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->previewImage:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/dream/DreamSetupFragment$DreamItem;->mDreamInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->description:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/dream/DreamSetupFragment$DreamItem;->mDreamInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public isActive()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/settings/dream/DreamSetupFragment$DreamItem;->this$0:Lcom/google/android/settings/dream/DreamSetupFragment;

    invoke-static {v0}, Lcom/google/android/settings/dream/DreamSetupFragment;->-$$Nest$fgetmActiveDream(Lcom/google/android/settings/dream/DreamSetupFragment;)Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/settings/dream/DreamSetupFragment$DreamItem;->mDreamInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object v0, v0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/google/android/settings/dream/DreamSetupFragment$DreamItem;->this$0:Lcom/google/android/settings/dream/DreamSetupFragment;

    invoke-static {p0}, Lcom/google/android/settings/dream/DreamSetupFragment;->-$$Nest$fgetmActiveDream(Lcom/google/android/settings/dream/DreamSetupFragment;)Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onItemClicked()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/settings/dream/DreamSetupFragment$DreamItem;->this$0:Lcom/google/android/settings/dream/DreamSetupFragment;

    iget-object v1, p0, Lcom/google/android/settings/dream/DreamSetupFragment$DreamItem;->mDreamInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    invoke-static {v0, v1}, Lcom/google/android/settings/dream/DreamSetupFragment;->-$$Nest$fputmActiveDream(Lcom/google/android/settings/dream/DreamSetupFragment;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)V

    iget-object v0, p0, Lcom/google/android/settings/dream/DreamSetupFragment$DreamItem;->this$0:Lcom/google/android/settings/dream/DreamSetupFragment;

    invoke-static {v0}, Lcom/google/android/settings/dream/DreamSetupFragment;->-$$Nest$fgetmBackend(Lcom/google/android/settings/dream/DreamSetupFragment;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/settings/dream/DreamSetupFragment$DreamItem;->mDreamInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/dream/DreamBackend;->setActiveDream(Landroid/content/ComponentName;)V

    return-void
.end method
