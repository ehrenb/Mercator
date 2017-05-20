.class public Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;
.super Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;
.source "HomeFragment.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/interfaces/DrawerFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment$ChangeTabReceiver;
    }
.end annotation


# static fields
.field public static final APTOIDE_FACEBOOK_LINK:Ljava/lang/String; = "http://www.facebook.com/aptoide"

.field public static final APTOIDE_TWITTER_URL:Ljava/lang/String; = "http://www.twitter.com/aptoide"

.field public static final BACKUP_APPS_PACKAGE_NAME:Ljava/lang/String; = "pt.aptoide.backupapps"

.field public static final FACEBOOK_PACKAGE_NAME:Ljava/lang/String; = "com.facebook.katana"

.field private static final TAG:Ljava/lang/String;

.field public static final TWITTER_PACKAGE_NAME:Ljava/lang/String; = "com.twitter.android"


# instance fields
.field private desiredViewPagerItem:Lcm/aptoide/pt/model/v7/Event$Name;

.field private mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private mNavigationView:Landroid/support/design/widget/NavigationView;

.field private receiver:Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment$ChangeTabReceiver;

.field private updateRepository:Lcm/aptoide/pt/v8engine/repository/UpdateRepository;

.field private updatesBadge:Lcm/aptoide/pt/v8engine/view/BadgeView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->desiredViewPagerItem:Lcm/aptoide/pt/model/v7/Event$Name;

    return-void
.end method

.method static synthetic access$000(Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;)Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->viewPager:Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;

    return-object v0
.end method

.method static synthetic access$100(Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;)Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->viewPager:Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;

    return-object v0
.end method

.method static synthetic access$200(Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;)Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->viewPager:Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;

    return-object v0
.end method

.method static synthetic access$300(Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;)Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->viewPager:Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;

    return-object v0
.end method

.method static synthetic lambda$openBackupApps$7(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 293
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 294
    return-void
.end method

.method static synthetic lambda$openFacebook$5(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 268
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 269
    return-void
.end method

.method static synthetic lambda$openSocialLink$9(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 320
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 321
    return-void
.end method

.method static synthetic lambda$setupViewPager$0(Ljava/util/List;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 166
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setupViewPager$2(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 170
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 171
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;Ljava/lang/String;)Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 76
    const-string v1, "storeName"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v1, "storeContext"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 78
    const-string v1, "storeTheme"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 79
    new-instance v1, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;

    invoke-direct {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;-><init>()V

    .line 80
    invoke-virtual {v1, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->setArguments(Landroid/os/Bundle;)V

    .line 81
    return-object v1
.end method

.method private openBackupApps()V
    .locals 3

    .prologue
    .line 279
    const-class v0, Lcm/aptoide/pt/database/realm/Installed;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/InstalledAccessor;

    .line 280
    const-string v1, "pt.aptoide.backupapps"

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/accessors/InstalledAccessor;->get(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    .line 281
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    sget-object v1, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->DESTROY:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    .line 282
    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->bindUntilEvent(Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;)Lcom/trello/rxlifecycle/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/d$c;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment$$Lambda$7;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;)Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment$$Lambda$8;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    .line 283
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 295
    return-void
.end method

.method private openFacebook()V
    .locals 3

    .prologue
    .line 257
    const-class v0, Lcm/aptoide/pt/database/realm/Installed;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/InstalledAccessor;

    .line 258
    const-string v1, "com.facebook.katana"

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/accessors/InstalledAccessor;->get(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    sget-object v1, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->DESTROY_VIEW:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    .line 259
    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->bindUntilEvent(Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;)Lcom/trello/rxlifecycle/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/d$c;)Lrx/d;

    move-result-object v0

    .line 260
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment$$Lambda$5;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;)Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment$$Lambda$6;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    .line 261
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 270
    return-void
.end method

.method private openSocialLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 307
    const-class v0, Lcm/aptoide/pt/database/realm/Installed;

    invoke-static {v0}, Lcm/aptoide/pt/database/accessors/AccessorFactory;->getAccessorFor(Ljava/lang/Class;)Lcm/aptoide/pt/database/accessors/Accessor;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/database/accessors/InstalledAccessor;

    .line 308
    invoke-virtual {v0, p1}, Lcm/aptoide/pt/database/accessors/InstalledAccessor;->get(Ljava/lang/String;)Lrx/d;

    move-result-object v0

    .line 309
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->h:Lcom/trello/rxlifecycle/a/b;

    .line 310
    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->bindUntilEvent(Lcom/trello/rxlifecycle/a/b;)Lcom/trello/rxlifecycle/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/d$c;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p2, p3, p4}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment$$Lambda$9;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment$$Lambda$10;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    .line 311
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 322
    return-void
.end method

.method private openTwitter()V
    .locals 4

    .prologue
    .line 273
    const-string v0, "com.twitter.android"

    const-string v1, "http://www.twitter.com/aptoide"

    .line 274
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcm/aptoide/pt/v8engine/R$string;->social_twitter_screen_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://www.twitter.com/aptoide"

    .line 275
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 273
    invoke-direct {p0, v0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->openSocialLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 276
    return-void
.end method

.method private setUserDataOnHeader()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 107
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->mNavigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v0, v4}, Landroid/support/design/widget/NavigationView;->c(I)Landroid/view/View;

    move-result-object v2

    .line 108
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->profile_email_text:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 109
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->profile_name_text:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 110
    sget v3, Lcm/aptoide/pt/v8engine/R$id;->profile_image:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 112
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->isLoggedIn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getUserData()Lcm/aptoide/accountmanager/util/UserCompleteData;

    move-result-object v3

    .line 118
    invoke-virtual {v3}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {v3}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v0

    .line 122
    invoke-virtual {v3}, Lcm/aptoide/accountmanager/util/UserCompleteData;->getUserAvatar()Ljava/lang/String;

    move-result-object v1

    sget v3, Lcm/aptoide/pt/v8engine/R$drawable;->user_account_white:I

    invoke-virtual {v0, v1, v2, v3}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadWithCircleTransformAndPlaceHolder(Ljava/lang/String;Landroid/widget/ImageView;I)Lcom/bumptech/glide/g/b/k;

    .line 135
    :goto_0
    return-void

    .line 128
    :cond_0
    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$drawable;->user_account_white:I

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(ILandroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    goto :goto_0
.end method

.method private setupNavigationView()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->mNavigationView:Landroid/support/design/widget/NavigationView;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->mNavigationView:Landroid/support/design/widget/NavigationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/NavigationView;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    .line 216
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->mNavigationView:Landroid/support/design/widget/NavigationView;

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;)Landroid/support/design/widget/NavigationView$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/NavigationView;->setNavigationItemSelectedListener(Landroid/support/design/widget/NavigationView$a;)V

    .line 248
    :cond_0
    return-void
.end method

.method private startFeedbackFragment()V
    .locals 5

    .prologue
    .line 298
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".jpg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 300
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU;->takeScreenshot(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 301
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-interface {v3, v1}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newSendFeedbackFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 301
    invoke-interface {v0, v1}, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;->pushFragmentV4(Landroid/support/v4/app/Fragment;)V

    .line 303
    return-void
.end method


# virtual methods
.method public bindViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->bindViews(Landroid/view/View;)V

    .line 92
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->nav_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/NavigationView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->mNavigationView:Landroid/support/design/widget/NavigationView;

    .line 93
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->drawer_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 95
    const-string v0, "HOME"

    invoke-static {v0}, Lcm/aptoide/pt/v8engine/analytics/Analytics$AppViewViewedFrom;->addStepToList(Ljava/lang/String;)V

    .line 97
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->setHasOptionsMenu(Z)V

    .line 98
    return-void
.end method

.method public closeDrawer()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->b()V

    .line 344
    return-void
.end method

.method protected displayHomeUpAsEnabled()Z
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public getContentViewId()I
    .locals 1

    .prologue
    .line 201
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->activity_main:I

    return v0
.end method

.method public getDesiredViewPagerItem()Lcm/aptoide/pt/model/v7/Event$Name;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->desiredViewPagerItem:Lcm/aptoide/pt/model/v7/Event$Name;

    return-object v0
.end method

.method public isDrawerOpened()Z
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->f(I)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$openBackupApps$6(Lcm/aptoide/pt/database/realm/Installed;)V
    .locals 4

    .prologue
    .line 284
    if-nez p1, :cond_0

    .line 285
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->getNavigationManager()Lcm/aptoide/pt/navigation/NavigationManagerV4;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v1

    const-string v2, "pt.aptoide.backupapps"

    sget-object v3, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;->OPEN_ONLY:Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;

    .line 286
    invoke-interface {v1, v2, v3}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newAppViewFragment(Ljava/lang/String;Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$OpenType;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 285
    invoke-interface {v0, v1}, Lcm/aptoide/pt/navigation/NavigationManagerV4;->navigateTo(Landroid/support/v4/app/Fragment;)V

    .line 292
    :goto_0
    return-void

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "pt.aptoide.backupapps"

    .line 289
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 290
    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method synthetic lambda$openFacebook$4(Lcm/aptoide/pt/database/realm/Installed;)V
    .locals 5

    .prologue
    .line 262
    const-string v1, "com.facebook.katana"

    const-string v2, "http://www.facebook.com/aptoide"

    .line 263
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcm/aptoide/pt/v8engine/R$string;->social_facebook_screen_title:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 265
    :goto_0
    const-string v4, "http://www.facebook.com/aptoide"

    .line 264
    invoke-static {v0, v4}, Lcm/aptoide/pt/utils/AptoideUtils$SocialLinksU;->getFacebookPageURL(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 262
    invoke-direct {p0, v1, v2, v3, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->openSocialLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 267
    return-void

    .line 265
    :cond_0
    invoke-virtual {p1}, Lcm/aptoide/pt/database/realm/Installed;->getVersionCode()I

    move-result v0

    goto :goto_0
.end method

.method synthetic lambda$openSocialLink$8(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcm/aptoide/pt/database/realm/Installed;)V
    .locals 2

    .prologue
    .line 312
    if-nez p4, :cond_0

    .line 313
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    .line 314
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newSocialFragment(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 313
    invoke-interface {v0, v1}, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;->pushFragmentV4(Landroid/support/v4/app/Fragment;)V

    .line 319
    :goto_0
    return-void

    .line 316
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 317
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method synthetic lambda$setupNavigationView$3(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 218
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 219
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->navigation_item_my_account:I

    if-ne v0, v1, :cond_1

    .line 220
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/accountmanager/AptoideAccountManager;->openAccountManager(Landroid/content/Context;)V

    .line 243
    :cond_0
    :goto_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->mNavigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->i(Landroid/view/View;)V

    .line 245
    const/4 v0, 0x0

    return v0

    .line 221
    :cond_1
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->navigation_item_rollback:I

    if-ne v0, v1, :cond_2

    .line 222
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    .line 223
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v1

    invoke-interface {v1}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newRollbackFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 222
    invoke-interface {v0, v1}, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;->pushFragmentV4(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 224
    :cond_2
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->navigation_item_setting_scheduled_downloads:I

    if-ne v0, v1, :cond_3

    .line 225
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    .line 226
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v1

    invoke-interface {v1}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newScheduledDownloadsFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 225
    invoke-interface {v0, v1}, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;->pushFragmentV4(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 227
    :cond_3
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->navigation_item_excluded_updates:I

    if-ne v0, v1, :cond_4

    .line 228
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    .line 229
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v1

    invoke-interface {v1}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newExcludedUpdatesFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 228
    invoke-interface {v0, v1}, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;->pushFragmentV4(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 230
    :cond_4
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->navigation_item_settings:I

    if-ne v0, v1, :cond_5

    .line 231
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->getActivity()Landroid/support/v4/app/u;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    .line 232
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getFragmentProvider()Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;

    move-result-object v1

    invoke-interface {v1}, Lcm/aptoide/pt/v8engine/configuration/FragmentProvider;->newSettingsFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 231
    invoke-interface {v0, v1}, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;->pushFragmentV4(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 233
    :cond_5
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->navigation_item_facebook:I

    if-ne v0, v1, :cond_6

    .line 234
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->openFacebook()V

    goto :goto_0

    .line 235
    :cond_6
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->navigation_item_twitter:I

    if-ne v0, v1, :cond_7

    .line 236
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->openTwitter()V

    goto :goto_0

    .line 237
    :cond_7
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->navigation_item_backup_apps:I

    if-ne v0, v1, :cond_8

    .line 238
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->openBackupApps()V

    goto :goto_0

    .line 239
    :cond_8
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->send_feedback:I

    if-ne v0, v1, :cond_0

    .line 240
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->startFeedbackFragment()V

    goto :goto_0
.end method

.method synthetic lambda$setupToolbarDetails$10(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->e(I)V

    return-void
.end method

.method synthetic lambda$setupViewPager$1(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->refreshUpdatesBadge(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-static {}, Lcm/aptoide/pt/v8engine/repository/RepositoryFactory;->getUpdateRepository()Lcm/aptoide/pt/v8engine/repository/UpdateRepository;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->updateRepository:Lcm/aptoide/pt/v8engine/repository/UpdateRepository;

    .line 87
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    .line 140
    invoke-super {p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 141
    new-instance v1, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment$ChangeTabReceiver;

    invoke-direct {v1, p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment$ChangeTabReceiver;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;)V

    iput-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->receiver:Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment$ChangeTabReceiver;

    .line 142
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->receiver:Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment$ChangeTabReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "SET_TAB_EVENT"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 143
    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 147
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->receiver:Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment$ChangeTabReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->receiver:Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment$ChangeTabReceiver;

    .line 149
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->onDestroyView()V

    .line 150
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->onResume()V

    .line 102
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->setUserDataOnHeader()V

    .line 103
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 104
    return-void
.end method

.method public openDrawer()V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->e(I)V

    .line 340
    return-void
.end method

.method public refreshUpdatesBadge(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 182
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->updatesBadge:Lcm/aptoide/pt/v8engine/view/BadgeView;

    if-nez v0, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->updatesBadge:Lcm/aptoide/pt/v8engine/view/BadgeView;

    const/high16 v1, 0x41300000    # 11.0f

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/view/BadgeView;->setTextSize(F)V

    .line 188
    if-lez p1, :cond_2

    .line 189
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->updatesBadge:Lcm/aptoide/pt/v8engine/view/BadgeView;

    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/view/BadgeView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->updatesBadge:Lcm/aptoide/pt/v8engine/view/BadgeView;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/BadgeView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->updatesBadge:Lcm/aptoide/pt/v8engine/view/BadgeView;

    invoke-virtual {v0, v4}, Lcm/aptoide/pt/v8engine/view/BadgeView;->show(Z)V

    goto :goto_0

    .line 194
    :cond_2
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->updatesBadge:Lcm/aptoide/pt/v8engine/view/BadgeView;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/BadgeView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->updatesBadge:Lcm/aptoide/pt/v8engine/view/BadgeView;

    invoke-virtual {v0, v4}, Lcm/aptoide/pt/v8engine/view/BadgeView;->hide(Z)V

    goto :goto_0
.end method

.method public setDesiredViewPagerItem(Lcm/aptoide/pt/model/v7/Event$Name;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->desiredViewPagerItem:Lcm/aptoide/pt/model/v7/Event$Name;

    return-void
.end method

.method protected setupSearch(Landroid/view/Menu;)V
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->getNavigationManager()Lcm/aptoide/pt/navigation/NavigationManagerV4;

    move-result-object v0

    invoke-static {p1, v0}, Lcm/aptoide/pt/v8engine/util/SearchUtils;->setupGlobalSearchView(Landroid/view/Menu;Lcm/aptoide/pt/navigation/NavigationManagerV4;)V

    .line 206
    return-void
.end method

.method public setupToolbarDetails(Landroid/support/v7/widget/Toolbar;)V
    .locals 1

    .prologue
    .line 329
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 330
    sget v0, Lcm/aptoide/pt/v8engine/R$drawable;->ic_drawer:I

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 331
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment$$Lambda$11;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    return-void
.end method

.method protected setupViewPager()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->setupViewPager()V

    .line 155
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->viewPager:Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;->getAdapter()Landroid/support/v4/view/z;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/StorePagerAdapter;

    .line 156
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/StorePagerAdapter;->getCount()I

    move-result v3

    move v2, v1

    .line 157
    :goto_0
    if-ge v2, v3, :cond_0

    .line 158
    sget-object v4, Lcm/aptoide/pt/model/v7/Event$Name;->myUpdates:Lcm/aptoide/pt/model/v7/Event$Name;

    invoke-virtual {v0, v2}, Lcm/aptoide/pt/v8engine/StorePagerAdapter;->getEventName(I)Lcm/aptoide/pt/model/v7/Event$Name;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcm/aptoide/pt/model/v7/Event$Name;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 159
    new-instance v3, Lcm/aptoide/pt/v8engine/view/BadgeView;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->pagerSlidingTabStrip:Lcom/astuetz/PagerSlidingTabStrip;

    .line 160
    invoke-virtual {v5, v1}, Lcom/astuetz/PagerSlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcm/aptoide/pt/v8engine/view/BadgeView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->updatesBadge:Lcm/aptoide/pt/v8engine/view/BadgeView;

    .line 165
    :cond_0
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->updateRepository:Lcm/aptoide/pt/v8engine/repository/UpdateRepository;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/repository/UpdateRepository;->getNonExcludedUpdates()Lrx/d;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment$$Lambda$1;->lambdaFactory$()Lrx/b/e;

    move-result-object v2

    .line 166
    invoke-virtual {v1, v2}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v1

    sget-object v2, Lcom/trello/rxlifecycle/a/b;->h:Lcom/trello/rxlifecycle/a/b;

    .line 167
    invoke-virtual {p0, v2}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->bindUntilEvent(Lcom/trello/rxlifecycle/a/b;)Lcom/trello/rxlifecycle/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/d;->a(Lrx/d$c;)Lrx/d;

    move-result-object v1

    .line 168
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;)Lrx/b/b;

    move-result-object v2

    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment$$Lambda$3;->lambdaFactory$()Lrx/b/b;

    move-result-object v3

    .line 169
    invoke-virtual {v1, v2, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 173
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->desiredViewPagerItem:Lcm/aptoide/pt/model/v7/Event$Name;

    if-eqz v1, :cond_1

    .line 174
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->desiredViewPagerItem:Lcm/aptoide/pt/model/v7/Event$Name;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/StorePagerAdapter;->containsEventName(Lcm/aptoide/pt/model/v7/Event$Name;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->viewPager:Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->desiredViewPagerItem:Lcm/aptoide/pt/model/v7/Event$Name;

    invoke-virtual {v0, v2}, Lcm/aptoide/pt/v8engine/StorePagerAdapter;->getEventNamePosition(Lcm/aptoide/pt/model/v7/Event$Name;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/v8engine/view/custom/AptoideViewPager;->setCurrentItem(I)V

    .line 178
    :cond_1
    return-void

    .line 157
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setupViews()V
    .locals 0

    .prologue
    .line 209
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/StoreFragment;->setupViews()V

    .line 210
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/HomeFragment;->setupNavigationView()V

    .line 211
    return-void
.end method
