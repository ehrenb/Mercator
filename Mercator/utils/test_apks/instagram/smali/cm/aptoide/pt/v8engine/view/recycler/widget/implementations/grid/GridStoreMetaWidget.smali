.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "GridStoreMetaWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget$StoreWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridStoreMetaDisplayable;",
        ">;"
    }
.end annotation


# instance fields
.field private appsCount:Landroid/widget/TextView;

.field private containerLayout:Landroid/view/View;

.field private description:Landroid/widget/TextView;

.field private descriptionContentLayout:Landroid/view/View;

.field private downloadsCount:Landroid/widget/TextView;

.field private editStoreButton:Landroid/widget/Button;

.field private image:Landroid/widget/ImageView;

.field private name:Landroid/widget/TextView;

.field private socialChannelsLayout:Landroid/view/View;

.field private subscribeButton:Landroid/widget/Button;

.field private subscribersCount:Landroid/widget/TextView;

.field private twitchButton:Landroid/widget/ImageButton;

.field private twitterButton:Landroid/widget/ImageButton;

.field private youtubeOrFacebookButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 63
    return-void
.end method

.method private editStore(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 233
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    const-class v2, Lcm/aptoide/accountmanager/CreateStoreActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    const-string v1, "storeId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 235
    const-string v1, "storeTheme"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const-string v1, "storeDescription"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const-string v1, "storeAvatar"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string v1, "from"

    const-string v2, "store"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/u;->startActivity(Landroid/content/Intent;)V

    .line 240
    return-void
.end method

.method private getColorOrDefault(Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 243
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 244
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->getStoreHeader()I

    move-result v1

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 246
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->getStoreHeader()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method private handleEvent(Lcm/aptoide/pt/model/v7/store/Store$SocialChannel;)Lrx/b/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/model/v7/store/Store$SocialChannel;",
            ")",
            "Lrx/b/b",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/store/Store$SocialChannel;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 253
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 256
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 258
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleSubscriptionLogic(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget$StoreWrapper;)Lrx/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget$StoreWrapper;",
            ")",
            "Lrx/b/b",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget$StoreWrapper;)Lrx/b/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$bindView$0(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 100
    return-void
.end method

.method static synthetic lambda$null$3(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 184
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 185
    return-void
.end method

.method static synthetic lambda$null$5(Lcm/aptoide/pt/model/v7/store/Store$SocialChannel;Ljava/lang/Void;)Lcm/aptoide/pt/model/v7/store/Store$SocialChannel;
    .locals 0

    .prologue
    .line 206
    return-object p0
.end method

.method static synthetic lambda$null$6(Lcm/aptoide/pt/model/v7/store/Store$SocialChannel;Ljava/lang/Void;)Lcm/aptoide/pt/model/v7/store/Store$SocialChannel;
    .locals 0

    .prologue
    .line 211
    return-object p0
.end method

.method static synthetic lambda$null$7(Lcm/aptoide/pt/model/v7/store/Store$SocialChannel;Ljava/lang/Void;)Lcm/aptoide/pt/model/v7/store/Store$SocialChannel;
    .locals 0

    .prologue
    .line 216
    return-object p0
.end method

.method static synthetic lambda$null$8(Lcm/aptoide/pt/model/v7/store/Store$SocialChannel;Ljava/lang/Void;)Lcm/aptoide/pt/model/v7/store/Store$SocialChannel;
    .locals 0

    .prologue
    .line 221
    return-object p0
.end method

.method private setupSocialChannelButtons(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/store/Store$SocialChannel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->compositeSubscription:Lrx/j/b;

    invoke-static {p1}, Lrx/d;->a(Ljava/lang/Iterable;)Lrx/d;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;)Lrx/b/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget$$Lambda$5;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;)Lrx/b/b;

    move-result-object v2

    .line 226
    invoke-virtual {v1, v2}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    goto :goto_0
.end method

.method private showStoreData(Lcm/aptoide/pt/model/v7/store/Store;Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 139
    invoke-direct {p0, p2, p3}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->getColorOrDefault(Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;Landroid/content/Context;)I

    move-result v0

    .line 140
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 141
    sget v1, Lcm/aptoide/pt/v8engine/R$drawable;->dialog_bg_2:I

    invoke-virtual {p3, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 142
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 143
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->containerLayout:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 149
    :goto_0
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->subscribeButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 150
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->editStoreButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 152
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->name:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->description:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/store/Store;->getAppearance()Lcm/aptoide/pt/model/v7/store/Store$Appearance;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/store/Store$Appearance;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->appsCount:Landroid/widget/TextView;

    .line 155
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/store/Store;->getStats()Lcm/aptoide/pt/model/v7/store/Store$Stats;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/store/Store$Stats;->getApps()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->downloadsCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/store/Store;->getStats()Lcm/aptoide/pt/model/v7/store/Store$Stats;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/store/Store$Stats;->getDownloads()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->withSuffix(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->subscribersCount:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/store/Store;->getStats()Lcm/aptoide/pt/model/v7/store/Store$Stats;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/store/Store$Stats;->getSubscribers()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->withSuffix(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    return-void

    .line 145
    :cond_0
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcm/aptoide/pt/v8engine/R$drawable;->dialog_bg_2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 146
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 147
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->containerLayout:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private showStoreImage(Lcm/aptoide/pt/model/v7/store/Store;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 129
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/store/Store;->getAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-static {p2}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$drawable;->ic_avatar_apps:I

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadUsingCircleTransform(ILandroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-static {p2}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v0

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/store/Store;->getAvatar()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadUsingCircleTransform(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    goto :goto_0
.end method

.method private updateSubscribeButtonText(Z)V
    .locals 3

    .prologue
    .line 161
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->subscribeButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->followed:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 163
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->itemView:Landroid/view/View;

    .line 162
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->appview_follow_store_button_text:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 66
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->outter_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->containerLayout:Landroid/view/View;

    .line 67
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->descriptionContent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->descriptionContentLayout:Landroid/view/View;

    .line 68
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->social_channels:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->socialChannelsLayout:Landroid/view/View;

    .line 69
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->image:Landroid/widget/ImageView;

    .line 70
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->name:Landroid/widget/TextView;

    .line 71
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->description:Landroid/widget/TextView;

    .line 72
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->follow_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->subscribeButton:Landroid/widget/Button;

    .line 73
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->edit_store_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->editStoreButton:Landroid/widget/Button;

    .line 74
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->subscribers:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->subscribersCount:Landroid/widget/TextView;

    .line 75
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->apps:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->appsCount:Landroid/widget/TextView;

    .line 76
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->downloads:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->downloadsCount:Landroid/widget/TextView;

    .line 77
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->youtube_or_facebook_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->youtubeOrFacebookButton:Landroid/widget/ImageButton;

    .line 78
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->twitch_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->twitchButton:Landroid/widget/ImageButton;

    .line 79
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->twitter_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->twitterButton:Landroid/widget/ImageButton;

    .line 80
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 44
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridStoreMetaDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridStoreMetaDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridStoreMetaDisplayable;)V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v1, 0x0

    .line 84
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridStoreMetaDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/store/GetStoreMeta;

    .line 85
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/GetStoreMeta;->getData()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v2

    .line 86
    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/store/Store;->getAppearance()Lcm/aptoide/pt/model/v7/store/Store$Appearance;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store$Appearance;->getTheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->get(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    move-result-object v3

    .line 87
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 89
    const-class v0, Lcm/aptoide/pt/database/realm/Store;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/StoreAccessor;

    .line 91
    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/store/Store;->getId()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcm/aptoide/pt/database/accessors/StoreAccessor;->get(J)Lrx/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d;->o()Lrx/d/a;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lrx/d/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 93
    :goto_0
    invoke-direct {p0, v2, v4}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->showStoreImage(Lcm/aptoide/pt/model/v7/store/Store;Landroid/content/Context;)V

    .line 94
    invoke-direct {p0, v2, v3, v4}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->showStoreData(Lcm/aptoide/pt/model/v7/store/Store;Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;Landroid/content/Context;)V

    .line 96
    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->updateSubscribeButtonText(Z)V

    .line 97
    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->compositeSubscription:Lrx/j/b;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->subscribeButton:Landroid/widget/Button;

    invoke-static {v4}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v4

    new-instance v5, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget$StoreWrapper;

    invoke-direct {v5, v2, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget$StoreWrapper;-><init>(Lcm/aptoide/pt/model/v7/store/Store;Z)V

    .line 98
    invoke-direct {p0, v5}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->handleSubscriptionLogic(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget$StoreWrapper;)Lrx/b/b;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget$$Lambda$1;->lambdaFactory$()Lrx/b/b;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v0

    .line 97
    invoke-virtual {v3, v0}, Lrx/j/b;->a(Lrx/k;)V

    .line 103
    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/store/Store;->getSocialChannels()Ljava/util/List;

    move-result-object v0

    .line 104
    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->setupSocialChannelButtons(Ljava/util/List;)V

    .line 107
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    :cond_0
    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/store/Store;->getAppearance()Lcm/aptoide/pt/model/v7/store/Store$Appearance;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store$Appearance;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->descriptionContentLayout:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 111
    :cond_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->socialChannelsLayout:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 114
    :cond_2
    invoke-static {}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->getUserRepo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 115
    invoke-static {}, Lcm/aptoide/accountmanager/AccountManagerPreferences;->getUserRepo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 116
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->descriptionContentLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/store/Store;->getAppearance()Lcm/aptoide/pt/model/v7/store/Store$Appearance;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store$Appearance;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->description:Landroid/widget/TextView;

    const-string v3, "Add a description to your store by editing it."

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :cond_3
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->editStoreButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->compositeSubscription:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->editStoreButton:Landroid/widget/Button;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {p0, v2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;Lcm/aptoide/pt/model/v7/store/Store;)Lrx/b/b;

    move-result-object v2

    .line 122
    invoke-virtual {v1, v2}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 126
    :cond_4
    return-void

    :cond_5
    move v0, v1

    .line 91
    goto/16 :goto_0
.end method

.method synthetic lambda$bindView$1(Lcm/aptoide/pt/model/v7/store/Store;Ljava/lang/Void;)V
    .locals 7

    .prologue
    .line 122
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/store/Store;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/store/Store;->getAppearance()Lcm/aptoide/pt/model/v7/store/Store$Appearance;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store$Appearance;->getTheme()Ljava/lang/String;

    move-result-object v4

    .line 123
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/store/Store;->getAppearance()Lcm/aptoide/pt/model/v7/store/Store$Appearance;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store$Appearance;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/store/Store;->getAvatar()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    .line 122
    invoke-direct/range {v1 .. v6}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->editStore(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$handleSubscriptionLogic$4(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget$StoreWrapper;Ljava/lang/Void;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 167
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget$StoreWrapper;->isStoreSubscribed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {p1, v4}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget$StoreWrapper;->setStoreSubscribed(Z)V

    .line 169
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget$StoreWrapper;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/accountmanager/AptoideAccountManager;->unsubscribeStore(Ljava/lang/String;)V

    .line 172
    :cond_0
    const-class v0, Lcm/aptoide/pt/database/realm/Store;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/StoreAccessor;

    .line 173
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget$StoreWrapper;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/store/Store;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcm/aptoide/pt/database/accessors/StoreAccessor;->remove(J)V

    .line 174
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->itemView:Landroid/view/View;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->unfollowing_store_message:I

    new-array v2, v5, [Ljava/lang/Object;

    .line 176
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget$StoreWrapper;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v3

    invoke-virtual {v3}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 175
    invoke-static {v1, v2}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;Ljava/lang/String;)V

    .line 187
    :goto_0
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget$StoreWrapper;->isStoreSubscribed()Z

    move-result v0

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->updateSubscribeButtonText(Z)V

    .line 188
    return-void

    .line 178
    :cond_1
    invoke-virtual {p1, v5}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget$StoreWrapper;->setStoreSubscribed(Z)V

    .line 179
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget$StoreWrapper;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget$$Lambda$10;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;)Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget$$Lambda$11;->lambdaFactory$()Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcm/aptoide/pt/v8engine/util/StoreUtilsProxy;->subscribeStore(Ljava/lang/String;Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;)V

    goto :goto_0
.end method

.method synthetic lambda$null$2(Lcm/aptoide/pt/model/v7/store/GetStoreMeta;)V
    .locals 5

    .prologue
    .line 180
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->itemView:Landroid/view/View;

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->store_followed:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 182
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/store/GetStoreMeta;->getData()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v4

    invoke-virtual {v4}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 181
    invoke-static {v1, v2}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-static {v0, v1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method synthetic lambda$setupSocialChannelButtons$10(Lcm/aptoide/pt/model/v7/store/Store$SocialChannel;)V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->handleEvent(Lcm/aptoide/pt/model/v7/store/Store$SocialChannel;)Lrx/b/b;

    .line 228
    return-void
.end method

.method synthetic lambda$setupSocialChannelButtons$9(Lcm/aptoide/pt/model/v7/store/Store$SocialChannel;)Lrx/d;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 198
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/store/Store$SocialChannel;->getType()Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;

    move-result-object v0

    .line 200
    sget-object v1, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget$1;->$SwitchMap$cm$aptoide$pt$model$v7$store$Store$SocialChannelType:[I

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store$SocialChannelType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 224
    invoke-static {}, Lrx/d;->d()Lrx/d;

    move-result-object v0

    :goto_0
    return-object v0

    .line 203
    :pswitch_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->youtubeOrFacebookButton:Landroid/widget/ImageButton;

    sget v1, Lcm/aptoide/pt/v8engine/R$drawable;->facebook_logo:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 204
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->youtubeOrFacebookButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 205
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->youtubeOrFacebookButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->youtubeOrFacebookButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v0

    invoke-static {p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget$$Lambda$6;->lambdaFactory$(Lcm/aptoide/pt/model/v7/store/Store$SocialChannel;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    goto :goto_0

    .line 209
    :pswitch_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->youtubeOrFacebookButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 210
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->youtubeOrFacebookButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->youtubeOrFacebookButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v0

    invoke-static {p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget$$Lambda$7;->lambdaFactory$(Lcm/aptoide/pt/model/v7/store/Store$SocialChannel;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    goto :goto_0

    .line 214
    :pswitch_2
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->twitchButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 215
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->twitchButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->twitchButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v0

    invoke-static {p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget$$Lambda$8;->lambdaFactory$(Lcm/aptoide/pt/model/v7/store/Store$SocialChannel;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    goto :goto_0

    .line 219
    :pswitch_3
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->twitterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 220
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->twitterButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->twitterButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v0

    invoke-static {p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget$$Lambda$9;->lambdaFactory$(Lcm/aptoide/pt/model/v7/store/Store$SocialChannel;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    goto :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
