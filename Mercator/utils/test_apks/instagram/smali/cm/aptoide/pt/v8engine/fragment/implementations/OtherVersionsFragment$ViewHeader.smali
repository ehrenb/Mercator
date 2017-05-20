.class final Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;
.super Ljava/lang/Object;
.source "OtherVersionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewHeader"
.end annotation


# instance fields
.field private final animationsEnabled:Z

.field private final appBarLayout:Landroid/support/design/widget/AppBarLayout;

.field private final appIcon:Landroid/widget/ImageView;

.field private final composedTitle1:Landroid/text/SpannableString;

.field private final composedTitle2:Landroid/text/SpannableString;

.field private final context:Landroid/content/Context;

.field private final otherVersionsTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;->context:Landroid/content/Context;

    .line 186
    new-instance v0, Landroid/text/SpannableString;

    .line 187
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->other_versions_partial_title_1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;->composedTitle1:Landroid/text/SpannableString;

    .line 188
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;->composedTitle1:Landroid/text/SpannableString;

    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;->composedTitle1:Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 190
    new-instance v0, Landroid/text/SpannableString;

    .line 191
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->other_versions_partial_title_2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;->composedTitle2:Landroid/text/SpannableString;

    .line 192
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;->composedTitle2:Landroid/text/SpannableString;

    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;->composedTitle2:Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 194
    invoke-static {}, Lcm/aptoide/pt/preferences/managed/ManagerPreferences;->getAnimationsEnabledStatus()Z

    move-result v0

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;->animationsEnabled:Z

    .line 196
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->other_versions_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;->otherVersionsTitle:Landroid/widget/TextView;

    .line 197
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->app_bar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    .line 199
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->app_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;->appIcon:Landroid/widget/ImageView;

    .line 201
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    new-instance v1, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader$1;

    invoke-direct {v1, p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader$1;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->a(Landroid/support/design/widget/AppBarLayout$b;)V

    .line 228
    return-void
.end method

.method static synthetic access$000(Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;->setImage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;)Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;->animationsEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;->appIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;->otherVersionsTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method private setImage(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;->context:Landroid/content/Context;

    invoke-static {v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/OtherVersionsFragment$ViewHeader;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1, v1}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 232
    return-void
.end method
