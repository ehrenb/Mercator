.class public Lcm/aptoide/accountmanager/CreateStoreActivity;
.super Lcm/aptoide/accountmanager/PermissionsBaseActivity;
.source "CreateStoreActivity.java"

# interfaces
.implements Lcm/aptoide/accountmanager/AptoideAccountManager$ICreateStore;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private CREATE_STORE_CODE:Ljava/lang/String;

.field private CREATE_STORE_REQUEST_CODE:I

.field private THEME_CLICKED_FLAG:Z

.field private aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

.field private content:Landroid/view/View;

.field private from:Ljava/lang/String;

.field private mAmberShape:Landroid/widget/ImageView;

.field private mAmberTick:Landroid/widget/ImageView;

.field private mBlackShape:Landroid/widget/ImageView;

.field private mBlackTick:Landroid/widget/ImageView;

.field private mBlueGreyShape:Landroid/widget/ImageView;

.field private mBlueGreyTick:Landroid/widget/ImageView;

.field private mBrownShape:Landroid/widget/ImageView;

.field private mBrownTick:Landroid/widget/ImageView;

.field private mChooseNameTitle:Landroid/widget/TextView;

.field private mCreateStore:Landroid/widget/Button;

.field private mDeepPurpleShape:Landroid/widget/ImageView;

.field private mDeepPurpleTick:Landroid/widget/ImageView;

.field private mDefaultShape:Landroid/widget/ImageView;

.field private mDefaultTick:Landroid/widget/ImageView;

.field private mGreenShape:Landroid/widget/ImageView;

.field private mGreenTick:Landroid/widget/ImageView;

.field private mGreyShape:Landroid/widget/ImageView;

.field private mGreyTick:Landroid/widget/ImageView;

.field private mHeader:Landroid/widget/TextView;

.field private mIndigoShape:Landroid/widget/ImageView;

.field private mIndigoTick:Landroid/widget/ImageView;

.field private mLightGreenShape:Landroid/widget/ImageView;

.field private mLightGreenTick:Landroid/widget/ImageView;

.field private mLightblueShape:Landroid/widget/ImageView;

.field private mLightblueTick:Landroid/widget/ImageView;

.field private mLimeShape:Landroid/widget/ImageView;

.field private mLimeTick:Landroid/widget/ImageView;

.field private mOrangeShape:Landroid/widget/ImageView;

.field private mOrangeTick:Landroid/widget/ImageView;

.field private mPinkShape:Landroid/widget/ImageView;

.field private mPinkTick:Landroid/widget/ImageView;

.field private mRedShape:Landroid/widget/ImageView;

.field private mRedTick:Landroid/widget/ImageView;

.field private mSkip:Landroid/widget/Button;

.field private mStoreAvatar:Landroid/widget/ImageView;

.field private mStoreAvatarLayout:Landroid/widget/RelativeLayout;

.field private mStoreDescription:Landroid/widget/EditText;

.field private mStoreName:Landroid/widget/EditText;

.field private mSubscriptions:Lrx/j/b;

.field private mTakePictureText:Landroid/widget/TextView;

.field private mTealShape:Landroid/widget/ImageView;

.field private mTealTick:Landroid/widget/ImageView;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;

.field progressDialog:Landroid/app/ProgressDialog;

.field private storeAvatarPath:Ljava/lang/String;

.field private storeDescription:Ljava/lang/String;

.field private storeId:J

.field private storeName:Ljava/lang/String;

.field private storeRemoteUrl:Ljava/lang/String;

.field private storeTheme:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcm/aptoide/accountmanager/CreateStoreActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/accountmanager/CreateStoreActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 42
    invoke-direct {p0}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;-><init>()V

    .line 92
    const-string v0, "1"

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->CREATE_STORE_CODE:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeName:Ljava/lang/String;

    .line 97
    iput-boolean v3, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->THEME_CLICKED_FLAG:Z

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    .line 102
    new-instance v0, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;

    .line 103
    invoke-static {}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 104
    invoke-static {}, Lcm/aptoide/pt/dataprovider/DataProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/repository/IdsRepositoryImpl;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 106
    iput v3, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->CREATE_STORE_REQUEST_CODE:I

    return-void
.end method

.method private bindViews()V
    .locals 1

    .prologue
    .line 164
    sget v0, Lcm/aptoide/accountmanager/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 165
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_store_action:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mCreateStore:Landroid/widget/Button;

    .line 166
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_store_skip:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mSkip:Landroid/widget/Button;

    .line 167
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_store_image_action:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mStoreAvatarLayout:Landroid/widget/RelativeLayout;

    .line 168
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_store_take_picture_text:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mTakePictureText:Landroid/widget/TextView;

    .line 169
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_store_name:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mStoreName:Landroid/widget/EditText;

    .line 170
    sget v0, Lcm/aptoide/accountmanager/R$id;->edit_store_description:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mStoreDescription:Landroid/widget/EditText;

    .line 171
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_store_header_textview:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mHeader:Landroid/widget/TextView;

    .line 172
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_store_choose_name_title:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mChooseNameTitle:Landroid/widget/TextView;

    .line 173
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_store_image:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mStoreAvatar:Landroid/widget/ImageView;

    .line 174
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->content:Landroid/view/View;

    .line 177
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_store_theme_orange:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mOrangeShape:Landroid/widget/ImageView;

    .line 178
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_store_theme_check_orange:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mOrangeTick:Landroid/widget/ImageView;

    .line 179
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_store_theme_green:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mGreenShape:Landroid/widget/ImageView;

    .line 180
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_store_theme_check_green:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mGreenTick:Landroid/widget/ImageView;

    .line 181
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_store_theme_red:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mRedShape:Landroid/widget/ImageView;

    .line 182
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_store_theme_check_red:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mRedTick:Landroid/widget/ImageView;

    .line 183
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_store_theme_indigo:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mIndigoShape:Landroid/widget/ImageView;

    .line 184
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_store_theme_check_indigo:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mIndigoTick:Landroid/widget/ImageView;

    .line 185
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_store_theme_teal:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mTealShape:Landroid/widget/ImageView;

    .line 186
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_store_theme_check_teal:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mTealTick:Landroid/widget/ImageView;

    .line 187
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_store_theme_pink:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mPinkShape:Landroid/widget/ImageView;

    .line 188
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_store_theme_check_pink:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mPinkTick:Landroid/widget/ImageView;

    .line 189
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_store_theme_lime:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mLimeShape:Landroid/widget/ImageView;

    .line 190
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_store_theme_check_lime:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mLimeTick:Landroid/widget/ImageView;

    .line 191
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_store_theme_amber:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mAmberShape:Landroid/widget/ImageView;

    .line 192
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_store_theme_check_amber:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mAmberTick:Landroid/widget/ImageView;

    .line 193
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_store_theme_brown:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mBrownShape:Landroid/widget/ImageView;

    .line 194
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_store_theme_check_brown:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mBrownTick:Landroid/widget/ImageView;

    .line 195
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_store_theme_lightblue:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mLightblueShape:Landroid/widget/ImageView;

    .line 196
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_store_theme_check_lightblue:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mLightblueTick:Landroid/widget/ImageView;

    .line 197
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_store_theme_default:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mDefaultShape:Landroid/widget/ImageView;

    .line 198
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_store_theme_check_default:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mDefaultTick:Landroid/widget/ImageView;

    .line 199
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_store_theme_black:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mBlackShape:Landroid/widget/ImageView;

    .line 200
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_store_theme_check_black:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mBlackTick:Landroid/widget/ImageView;

    .line 201
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_store_theme_blue_grey:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mBlueGreyShape:Landroid/widget/ImageView;

    .line 202
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_store_theme_check_blue_grey:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mBlueGreyTick:Landroid/widget/ImageView;

    .line 203
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_store_theme_deep_purple:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mDeepPurpleShape:Landroid/widget/ImageView;

    .line 204
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_store_theme_check_deep_purple:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mDeepPurpleTick:Landroid/widget/ImageView;

    .line 205
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_store_theme_light_green:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mLightGreenShape:Landroid/widget/ImageView;

    .line 206
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_store_theme_check_light_green:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mLightGreenTick:Landroid/widget/ImageView;

    .line 207
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_store_theme_grey:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mGreyShape:Landroid/widget/ImageView;

    .line 208
    sget v0, Lcm/aptoide/accountmanager/R$id;->create_store_theme_check_grey:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mGreyTick:Landroid/widget/ImageView;

    .line 209
    return-void
.end method

.method private editViews()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 216
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->from:Ljava/lang/String;

    const-string v1, "store"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mHeader:Landroid/widget/TextView;

    sget v1, Lcm/aptoide/accountmanager/R$string;->create_store_header:I

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Aptoide"

    aput-object v3, v2, v4

    .line 218
    invoke-static {v1, v2}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mChooseNameTitle:Landroid/widget/TextView;

    sget v1, Lcm/aptoide/accountmanager/R$string;->create_store_name:I

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Aptoide"

    aput-object v3, v2, v4

    .line 220
    invoke-static {v1, v2}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mHeader:Landroid/widget/TextView;

    sget v1, Lcm/aptoide/accountmanager/R$string;->edit_store_header:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 223
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mChooseNameTitle:Landroid/widget/TextView;

    sget v1, Lcm/aptoide/accountmanager/R$string;->create_store_description_title:I

    new-array v2, v4, [Ljava/lang/Object;

    .line 224
    invoke-static {v1, v2}, Lcm/aptoide/pt/utils/AptoideUtils$StringU;->getFormattedString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mStoreName:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mStoreDescription:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mStoreDescription:Landroid/widget/EditText;

    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeRemoteUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 229
    invoke-static {p0}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeRemoteUrl:Ljava/lang/String;

    iget-object v2, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mStoreAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadUsingCircleTransform(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 231
    :cond_1
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    const-string v1, "visible"

    invoke-direct {p0, v0, v1}, Lcm/aptoide/accountmanager/CreateStoreActivity;->handleThemeTick(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mCreateStore:Landroid/widget/Button;

    sget v1, Lcm/aptoide/accountmanager/R$string;->save_edit_store:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 233
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mSkip:Landroid/widget/Button;

    sget v1, Lcm/aptoide/accountmanager/R$string;->cancel:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private getData()V
    .locals 4

    .prologue
    .line 155
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->from:Ljava/lang/String;

    .line 156
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "storeId"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeId:J

    .line 157
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "storeAvatar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeRemoteUrl:Ljava/lang/String;

    .line 158
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "storeTheme"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    .line 159
    :goto_1
    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    .line 160
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "storeDescription"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeDescription:Ljava/lang/String;

    .line 161
    return-void

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "storeTheme"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private handleThemeTick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 452
    .line 453
    const-string v0, "visible"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 456
    :goto_0
    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    move v1, v3

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 508
    :goto_2
    return-void

    .line 456
    :sswitch_0
    const-string v2, "orange"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :sswitch_1
    const-string v1, "green"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "red"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "indigo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v1, "teal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_5
    const-string v1, "pink"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_6
    const-string v1, "lime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_7
    const-string v1, "amber"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_8
    const-string v1, "brown"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_9
    const-string v1, "light-blue"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_a
    const-string v1, "default"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto :goto_1

    :sswitch_b
    const-string v1, "black"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto :goto_1

    :sswitch_c
    const-string v1, "blue-grey"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string v1, "deep-purple"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string v1, "grey"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string v1, "light-green"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    goto/16 :goto_1

    .line 458
    :pswitch_0
    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mOrangeTick:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 461
    :pswitch_1
    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mGreenTick:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 464
    :pswitch_2
    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mRedTick:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 467
    :pswitch_3
    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mIndigoTick:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 470
    :pswitch_4
    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mTealTick:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 473
    :pswitch_5
    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mPinkTick:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 476
    :pswitch_6
    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mLimeTick:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 479
    :pswitch_7
    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mAmberTick:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 482
    :pswitch_8
    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mBrownTick:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 485
    :pswitch_9
    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mLightblueTick:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 488
    :pswitch_a
    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mDefaultTick:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 491
    :pswitch_b
    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mBlackTick:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 494
    :pswitch_c
    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mBlueGreyTick:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 497
    :pswitch_d
    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mDeepPurpleTick:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 500
    :pswitch_e
    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mGreyTick:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 503
    :pswitch_f
    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mLightGreenTick:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_1
    move v0, v2

    goto/16 :goto_0

    .line 456
    :sswitch_data_0
    .sparse-switch
        -0x71efac43 -> :sswitch_d
        -0x4696012e -> :sswitch_3
        -0x3c21d9d2 -> :sswitch_0
        -0xf37254f -> :sswitch_9
        0x1b891 -> :sswitch_2
        0x308adf -> :sswitch_e
        0x32afd5 -> :sswitch_6
        0x348176 -> :sswitch_5
        0x36425c -> :sswitch_4
        0x589f0e3 -> :sswitch_7
        0x5978fff -> :sswitch_b
        0x59a8136 -> :sswitch_8
        0x5e0cf03 -> :sswitch_1
        0x289b6f8c -> :sswitch_f
        0x5c13d641 -> :sswitch_a
        0x716ea472 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method static synthetic lambda$null$39(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 556
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static synthetic lambda$null$4(Lcm/aptoide/pt/utils/GenericDialogs$EResponse;)V
    .locals 0

    .prologue
    .line 271
    return-void
.end method

.method static synthetic lambda$null$46(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 600
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method static synthetic lambda$null$5(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 272
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 273
    return-void
.end method

.method static synthetic lambda$null$50(Landroid/app/ProgressDialog;Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;)V
    .locals 0

    .prologue
    .line 617
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 618
    return-void
.end method

.method static synthetic lambda$null$7(Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;)V
    .locals 0

    .prologue
    .line 295
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->sendLoginBroadcast()V

    .line 296
    return-void
.end method

.method static synthetic lambda$setupListeners$19(Ljava/lang/Void;)Lrx/d;
    .locals 1

    .prologue
    .line 357
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->refreshAndSaveUserInfoData()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setupListeners$3(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 249
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 250
    return-void
.end method

.method static synthetic lambda$showIconPropertiesError$0(Lcm/aptoide/pt/utils/GenericDialogs$EResponse;)V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method static synthetic lambda$showIconPropertiesError$1(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 150
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 151
    return-void
.end method

.method private setStoreData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 647
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 648
    iput-object v2, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeName:Ljava/lang/String;

    .line 651
    :cond_0
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 652
    iput-object v2, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    .line 655
    :cond_1
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeDescription:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 656
    iput-object v2, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeDescription:Ljava/lang/String;

    .line 658
    :cond_2
    return-void
.end method

.method private setupListeners()V
    .locals 4

    .prologue
    .line 247
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mSubscriptions:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mStoreAvatarLayout:Landroid/widget/RelativeLayout;

    .line 248
    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$3;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;)Lrx/b/b;

    move-result-object v2

    invoke-static {}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$4;->lambdaFactory$()Lrx/b/b;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v1

    .line 247
    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 251
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mSubscriptions:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mCreateStore:Landroid/widget/Button;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$5;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;)Lrx/b/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 356
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mSubscriptions:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mSkip:Landroid/widget/Button;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$6;->lambdaFactory$()Lrx/b/e;

    move-result-object v2

    .line 357
    invoke-virtual {v1, v2}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$7;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;)Lrx/b/b;

    move-result-object v2

    invoke-static {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$8;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;)Lrx/b/b;

    move-result-object v3

    .line 358
    invoke-virtual {v1, v2, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v1

    .line 356
    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 363
    return-void
.end method

.method private setupThemeListeners()V
    .locals 3

    .prologue
    .line 366
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mSubscriptions:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mOrangeShape:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$9;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;)Lrx/b/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 371
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mSubscriptions:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mGreenShape:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$10;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;)Lrx/b/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 376
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mSubscriptions:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mRedShape:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$11;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;)Lrx/b/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 381
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mSubscriptions:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mIndigoShape:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$12;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;)Lrx/b/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 386
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mSubscriptions:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mTealShape:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$13;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;)Lrx/b/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 391
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mSubscriptions:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mPinkShape:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$14;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;)Lrx/b/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 396
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mSubscriptions:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mLimeShape:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$15;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;)Lrx/b/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 401
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mSubscriptions:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mAmberShape:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$16;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;)Lrx/b/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 406
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mSubscriptions:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mBrownShape:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$17;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;)Lrx/b/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 411
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mSubscriptions:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mLightblueShape:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$18;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;)Lrx/b/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 416
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mSubscriptions:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mDefaultShape:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$19;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;)Lrx/b/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 421
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mSubscriptions:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mBlackShape:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$20;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;)Lrx/b/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 426
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mSubscriptions:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mBlueGreyShape:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$21;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;)Lrx/b/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 431
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mSubscriptions:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mDeepPurpleShape:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$22;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;)Lrx/b/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 436
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mSubscriptions:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mLightGreenShape:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$23;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;)Lrx/b/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 441
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mSubscriptions:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mGreyShape:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$24;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;)Lrx/b/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 446
    return-void
.end method

.method private setupToolbar()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 238
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 240
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->c(Z)V

    .line 241
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Z)V

    .line 242
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->getSupportActionBar()Landroid/support/v7/a/a;

    move-result-object v0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->getActivityTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Ljava/lang/CharSequence;)V

    .line 244
    :cond_0
    return-void
.end method

.method private validateData()I
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->from:Ljava/lang/String;

    const-string v1, "store"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 516
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->getRepoDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->getRepoTheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 517
    :cond_0
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->getRepoAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    const/4 v0, 0x4

    iput v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->CREATE_STORE_REQUEST_CODE:I

    .line 537
    :goto_0
    return v0

    .line 520
    :cond_1
    const/4 v0, 0x5

    iput v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->CREATE_STORE_REQUEST_CODE:I

    goto :goto_0

    .line 524
    :cond_2
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->getRepoName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    .line 525
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->getRepoAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 526
    const/4 v0, 0x1

    iput v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->CREATE_STORE_REQUEST_CODE:I

    .line 537
    :cond_3
    :goto_1
    iget v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->CREATE_STORE_REQUEST_CODE:I

    goto :goto_0

    .line 527
    :cond_4
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->getRepoTheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    .line 528
    const/4 v0, 0x2

    iput v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->CREATE_STORE_REQUEST_CODE:I

    goto :goto_1

    .line 530
    :cond_5
    const/4 v0, 0x3

    iput v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->CREATE_STORE_REQUEST_CODE:I

    goto :goto_1

    .line 533
    :cond_6
    const/4 v0, 0x0

    iput v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->CREATE_STORE_REQUEST_CODE:I

    .line 534
    sget v0, Lcm/aptoide/accountmanager/R$string;->nothing_inserted_store:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->onCreateFail(I)V

    goto :goto_1
.end method


# virtual methods
.method protected getActivityTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->from:Ljava/lang/String;

    const-string v1, "store"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    sget v0, Lcm/aptoide/accountmanager/R$string;->create_store_title:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    :cond_0
    sget v0, Lcm/aptoide/accountmanager/R$string;->edit_store_title:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getLayoutId()I
    .locals 1

    .prologue
    .line 129
    sget v0, Lcm/aptoide/accountmanager/R$layout;->activity_create_store:I

    return v0
.end method

.method public getRepoAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeAvatarPath:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeAvatarPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRepoDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeDescription:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mStoreDescription:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRepoName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mStoreName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRepoTheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    goto :goto_0
.end method

.method synthetic lambda$null$10(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 303
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/accountmanager/ws/ErrorsMapper;->getWebServiceErrorMessageFromCode(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->onCreateFail(I)V

    .line 304
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 305
    return-void
.end method

.method synthetic lambda$null$11(Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;)V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 314
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->finish()V

    .line 315
    return-void
.end method

.method synthetic lambda$null$12(Lcm/aptoide/pt/model/v7/BaseV7Response;)V
    .locals 3

    .prologue
    .line 312
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->refreshAndSaveUserInfoData()Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$50;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;)Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$51;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 316
    return-void
.end method

.method synthetic lambda$null$13(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 324
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 325
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->finish()V

    .line 327
    :cond_0
    return-void
.end method

.method synthetic lambda$null$14(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 317
    move-object v0, p1

    check-cast v0, Lcm/aptoide/pt/dataprovider/exception/AptoideWsV7Exception;

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/exception/AptoideWsV7Exception;->getBaseResponse()Lcm/aptoide/pt/model/v7/BaseV7Response;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/BaseV7Response;->getErrors()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 319
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/BaseV7Response$Error;

    .line 320
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/BaseV7Response$Error;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "API-1"

    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 323
    sget v0, Lcm/aptoide/accountmanager/R$string;->ws_error_API_1:I

    invoke-static {p0, v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asObservableSnack(Landroid/app/Activity;I)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$49;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;)Lrx/b/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    .line 332
    :goto_0
    return-void

    .line 329
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/accountmanager/ws/ErrorsMapper;->getWebServiceErrorMessageFromCode(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->onCreateFail(I)V

    .line 330
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method synthetic lambda$null$15(Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;)V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 345
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->sendLoginBroadcast()V

    .line 346
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->finish()V

    .line 347
    return-void
.end method

.method synthetic lambda$null$16(Lcm/aptoide/pt/model/v7/BaseV7Response;)V
    .locals 3

    .prologue
    .line 343
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->refreshAndSaveUserInfoData()Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$47;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;)Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$48;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 348
    return-void
.end method

.method synthetic lambda$null$17(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 349
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/accountmanager/ws/ErrorsMapper;->getWebServiceErrorMessageFromCode(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->onCreateFail(I)V

    .line 350
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 351
    return-void
.end method

.method synthetic lambda$null$38(Landroid/app/ProgressDialog;Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;)V
    .locals 0

    .prologue
    .line 553
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 554
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->sendLoginBroadcast()V

    .line 555
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->finish()V

    .line 556
    return-void
.end method

.method synthetic lambda$null$41(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 562
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 563
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->finish()V

    .line 565
    :cond_0
    return-void
.end method

.method synthetic lambda$null$42(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 570
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 571
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->finish()V

    .line 573
    :cond_0
    return-void
.end method

.method synthetic lambda$null$43(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 582
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 583
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->finish()V

    .line 585
    :cond_0
    return-void
.end method

.method synthetic lambda$null$44(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 591
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 592
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->finish()V

    .line 594
    :cond_0
    return-void
.end method

.method synthetic lambda$null$45(Landroid/app/ProgressDialog;Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;)V
    .locals 0

    .prologue
    .line 597
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 598
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->sendLoginBroadcast()V

    .line 599
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->finish()V

    .line 600
    return-void
.end method

.method synthetic lambda$null$48(Landroid/app/ProgressDialog;Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;)V
    .locals 0

    .prologue
    .line 610
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 611
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->sendLoginBroadcast()V

    .line 612
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->finish()V

    .line 613
    return-void
.end method

.method synthetic lambda$null$6(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 281
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 282
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->finish()V

    .line 284
    :cond_0
    return-void
.end method

.method synthetic lambda$null$8(Ljava/lang/Integer;)V
    .locals 4

    .prologue
    .line 293
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mSubscriptions:Lrx/j/b;

    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->refreshAndSaveUserInfoData()Lrx/d;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$56;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    invoke-static {}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$57;->lambdaFactory$()Lrx/b/b;

    move-result-object v3

    .line 294
    invoke-virtual {v1, v2, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v1

    .line 293
    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 297
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 298
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->finish()V

    .line 300
    :cond_0
    return-void
.end method

.method synthetic lambda$null$9(Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 265
    invoke-virtual {p1}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->hasErrors()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 266
    invoke-virtual {p1}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getErrors()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getErrors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 268
    invoke-virtual {p1}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getErrors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/accountmanager/ws/responses/ErrorResponse;

    iget-object v0, v0, Lcm/aptoide/accountmanager/ws/responses/ErrorResponse;->code:Ljava/lang/String;

    const-string v1, "WOP-2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mSubscriptions:Lrx/j/b;

    const-string v1, ""

    .line 270
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcm/aptoide/accountmanager/R$string;->ws_error_WOP_2:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 269
    invoke-static {p0, v1, v2}, Lcm/aptoide/pt/utils/GenericDialogs;->createGenericContinueMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/d;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$52;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    invoke-static {}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$53;->lambdaFactory$()Lrx/b/b;

    move-result-object v3

    .line 271
    invoke-virtual {v1, v2, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v1

    .line 269
    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    invoke-virtual {p1}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getErrors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/accountmanager/ws/responses/ErrorResponse;

    iget-object v0, v0, Lcm/aptoide/accountmanager/ws/responses/ErrorResponse;->code:Ljava/lang/String;

    const-string v1, "WOP-3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    invoke-virtual {p1}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getErrors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/accountmanager/ws/responses/ErrorResponse;

    iget-object v0, v0, Lcm/aptoide/accountmanager/ws/responses/ErrorResponse;->code:Ljava/lang/String;

    .line 275
    invoke-static {v0}, Lcm/aptoide/accountmanager/ws/ErrorsMapper;->getWebServiceErrorMessageFromCode(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/app/Activity;I)V

    goto :goto_0

    .line 280
    :cond_2
    invoke-virtual {p1}, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;->getErrors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/accountmanager/ws/responses/ErrorResponse;

    iget-object v0, v0, Lcm/aptoide/accountmanager/ws/responses/ErrorResponse;->code:Ljava/lang/String;

    .line 279
    invoke-static {v0}, Lcm/aptoide/accountmanager/ws/ErrorsMapper;->getWebServiceErrorMessageFromCode(Ljava/lang/String;)I

    move-result v0

    .line 278
    invoke-static {p0, v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asObservableSnack(Landroid/app/Activity;I)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$54;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;)Lrx/b/b;

    move-result-object v1

    .line 280
    invoke-virtual {v0, v1}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    goto :goto_0

    .line 287
    :cond_3
    iget v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->CREATE_STORE_REQUEST_CODE:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 288
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->onCreateSuccess(Landroid/app/ProgressDialog;)V

    goto :goto_0

    .line 290
    :cond_4
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 291
    sget v0, Lcm/aptoide/accountmanager/R$string;->create_store_store_created:I

    invoke-static {p0, v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asLongObservableSnack(Landroid/app/Activity;I)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$55;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;)Lrx/b/b;

    move-result-object v1

    .line 292
    invoke-virtual {v0, v1}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    goto :goto_0
.end method

.method synthetic lambda$onCreateSuccess$40(Landroid/app/ProgressDialog;Lcm/aptoide/pt/model/v7/BaseV7Response;)V
    .locals 3

    .prologue
    .line 552
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->refreshAndSaveUserInfoData()Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$39;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;Landroid/app/ProgressDialog;)Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$40;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 557
    return-void
.end method

.method synthetic lambda$onCreateSuccess$47(Landroid/app/ProgressDialog;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 558
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/net/SocketTimeoutException;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 560
    sget v0, Lcm/aptoide/accountmanager/R$string;->store_upload_photo_failed:I

    invoke-static {p0, v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asLongObservableSnack(Landroid/app/Activity;I)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$33;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;)Lrx/b/b;

    move-result-object v1

    .line 561
    invoke-virtual {v0, v1}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    .line 596
    :goto_0
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->refreshAndSaveUserInfoData()Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$37;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;Landroid/app/ProgressDialog;)Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$38;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 601
    return-void

    .line 566
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/concurrent/TimeoutException;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 567
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 568
    sget v0, Lcm/aptoide/accountmanager/R$string;->store_upload_photo_failed:I

    invoke-static {p0, v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asLongObservableSnack(Landroid/app/Activity;I)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$34;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;)Lrx/b/b;

    move-result-object v1

    .line 569
    invoke-virtual {v0, v1}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    goto :goto_0

    :cond_1
    move-object v0, p2

    .line 574
    check-cast v0, Lcm/aptoide/pt/dataprovider/exception/AptoideWsV7Exception;

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/exception/AptoideWsV7Exception;->getBaseResponse()Lcm/aptoide/pt/model/v7/BaseV7Response;

    move-result-object v0

    .line 575
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/BaseV7Response;->getErrors()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 576
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/BaseV7Response$Error;

    .line 577
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/BaseV7Response$Error;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "API-1"

    .line 578
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 579
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 580
    sget v0, Lcm/aptoide/accountmanager/R$string;->ws_error_API_1:I

    invoke-static {p0, v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asLongObservableSnack(Landroid/app/Activity;I)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$35;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;)Lrx/b/b;

    move-result-object v1

    .line 581
    invoke-virtual {v0, v1}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    goto :goto_0

    .line 587
    :cond_2
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 589
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/accountmanager/ws/ErrorsMapper;->getWebServiceErrorMessageFromCode(Ljava/lang/String;)I

    move-result v0

    .line 588
    invoke-static {p0, v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asLongObservableSnack(Landroid/app/Activity;I)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$36;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;)Lrx/b/b;

    move-result-object v1

    .line 590
    invoke-virtual {v0, v1}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    goto :goto_0
.end method

.method synthetic lambda$onCreateSuccess$49(Landroid/app/ProgressDialog;Lcm/aptoide/pt/model/v7/BaseV7Response;)V
    .locals 3

    .prologue
    .line 609
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->refreshAndSaveUserInfoData()Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$31;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;Landroid/app/ProgressDialog;)Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$32;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 614
    return-void
.end method

.method synthetic lambda$onCreateSuccess$51(Landroid/app/ProgressDialog;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 615
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/accountmanager/ws/ErrorsMapper;->getWebServiceErrorMessageFromCode(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->onCreateFail(I)V

    .line 616
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->refreshAndSaveUserInfoData()Lrx/d;

    move-result-object v0

    invoke-static {p1}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$29;->lambdaFactory$(Landroid/app/ProgressDialog;)Lrx/b/b;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$30;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 619
    return-void
.end method

.method synthetic lambda$setupListeners$18(Ljava/lang/Void;)V
    .locals 10

    .prologue
    const/4 v7, 0x1

    .line 252
    invoke-static {p0}, Lcm/aptoide/pt/utils/AptoideUtils$SystemU;->hideKeyboard(Landroid/app/Activity;)V

    .line 253
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mStoreName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeName:Ljava/lang/String;

    .line 254
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mStoreDescription:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeDescription:Ljava/lang/String;

    .line 255
    invoke-direct {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->validateData()I

    .line 257
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcm/aptoide/accountmanager/R$string;->please_wait_upload:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-static {p0, v0}, Lcm/aptoide/pt/utils/GenericDialogs;->createGenericPleaseWaitDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 258
    iget v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->CREATE_STORE_REQUEST_CODE:I

    if-eq v0, v7, :cond_0

    iget v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->CREATE_STORE_REQUEST_CODE:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->CREATE_STORE_REQUEST_CODE:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 261
    :cond_0
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 262
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mSubscriptions:Lrx/j/b;

    .line 263
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeName:Ljava/lang/String;

    iget-object v3, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->CREATE_STORE_CODE:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;

    move-result-object v1

    .line 264
    invoke-virtual {v1}, Lcm/aptoide/accountmanager/ws/CheckUserCredentialsRequest;->observe()Lrx/d;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$41;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;)Lrx/b/b;

    move-result-object v2

    invoke-static {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$42;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;)Lrx/b/b;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v1

    .line 262
    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 353
    :cond_1
    :goto_0
    return-void

    .line 306
    :cond_2
    iget v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->CREATE_STORE_REQUEST_CODE:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 307
    invoke-direct {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->setStoreData()V

    .line 308
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 309
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mSubscriptions:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    invoke-interface {v1}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 310
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeName:Ljava/lang/String;

    iget-object v4, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    iget-object v5, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeAvatarPath:Ljava/lang/String;

    iget-object v6, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeDescription:Ljava/lang/String;

    .line 311
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-wide v8, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeId:J

    .line 309
    invoke-static/range {v1 .. v9}, Lcm/aptoide/pt/dataprovider/ws/v7/SetStoreRequest;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;J)Lcm/aptoide/pt/dataprovider/ws/v7/SetStoreRequest;

    move-result-object v1

    .line 311
    invoke-virtual {v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SetStoreRequest;->observe()Lrx/d;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$43;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;)Lrx/b/b;

    move-result-object v2

    invoke-static {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$44;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;)Lrx/b/b;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v1

    .line 309
    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    goto :goto_0

    .line 333
    :cond_3
    iget v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->CREATE_STORE_REQUEST_CODE:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 337
    invoke-direct {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->setStoreData()V

    .line 338
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 339
    iget-object v6, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mSubscriptions:Lrx/j/b;

    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 340
    invoke-interface {v1}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeId:J

    iget-object v4, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    iget-object v5, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeDescription:Ljava/lang/String;

    .line 339
    invoke-static/range {v0 .. v5}, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest;->of(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest;

    move-result-object v0

    .line 341
    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest;->observe()Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$45;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;)Lrx/b/b;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$46;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;)Lrx/b/b;

    move-result-object v2

    .line 342
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v0

    .line 339
    invoke-virtual {v6, v0}, Lrx/j/b;->a(Lrx/k;)V

    goto :goto_0
.end method

.method synthetic lambda$setupListeners$2(Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 248
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->chooseAvatarSource()V

    return-void
.end method

.method synthetic lambda$setupListeners$20(Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;)V
    .locals 0

    .prologue
    .line 359
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->finish()V

    .line 360
    return-void
.end method

.method synthetic lambda$setupListeners$21(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 361
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->finish()V

    .line 362
    return-void
.end method

.method synthetic lambda$setupThemeListeners$22(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    const-string v1, "gone"

    invoke-direct {p0, v0, v1}, Lcm/aptoide/accountmanager/CreateStoreActivity;->handleThemeTick(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mOrangeTick:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 369
    const-string v0, "orange"

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    .line 370
    return-void
.end method

.method synthetic lambda$setupThemeListeners$23(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    const-string v1, "gone"

    invoke-direct {p0, v0, v1}, Lcm/aptoide/accountmanager/CreateStoreActivity;->handleThemeTick(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mGreenTick:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 374
    const-string v0, "green"

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    .line 375
    return-void
.end method

.method synthetic lambda$setupThemeListeners$24(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    const-string v1, "gone"

    invoke-direct {p0, v0, v1}, Lcm/aptoide/accountmanager/CreateStoreActivity;->handleThemeTick(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mRedTick:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 379
    const-string v0, "red"

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    .line 380
    return-void
.end method

.method synthetic lambda$setupThemeListeners$25(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    const-string v1, "gone"

    invoke-direct {p0, v0, v1}, Lcm/aptoide/accountmanager/CreateStoreActivity;->handleThemeTick(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mIndigoTick:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 384
    const-string v0, "indigo"

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    .line 385
    return-void
.end method

.method synthetic lambda$setupThemeListeners$26(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    const-string v1, "gone"

    invoke-direct {p0, v0, v1}, Lcm/aptoide/accountmanager/CreateStoreActivity;->handleThemeTick(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mTealTick:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 389
    const-string v0, "teal"

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    .line 390
    return-void
.end method

.method synthetic lambda$setupThemeListeners$27(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    const-string v1, "gone"

    invoke-direct {p0, v0, v1}, Lcm/aptoide/accountmanager/CreateStoreActivity;->handleThemeTick(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mPinkTick:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 394
    const-string v0, "pink"

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    .line 395
    return-void
.end method

.method synthetic lambda$setupThemeListeners$28(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    const-string v1, "gone"

    invoke-direct {p0, v0, v1}, Lcm/aptoide/accountmanager/CreateStoreActivity;->handleThemeTick(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mLimeTick:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 399
    const-string v0, "lime"

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    .line 400
    return-void
.end method

.method synthetic lambda$setupThemeListeners$29(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    const-string v1, "gone"

    invoke-direct {p0, v0, v1}, Lcm/aptoide/accountmanager/CreateStoreActivity;->handleThemeTick(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mAmberTick:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 404
    const-string v0, "amber"

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    .line 405
    return-void
.end method

.method synthetic lambda$setupThemeListeners$30(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    const-string v1, "gone"

    invoke-direct {p0, v0, v1}, Lcm/aptoide/accountmanager/CreateStoreActivity;->handleThemeTick(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mBrownTick:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 409
    const-string v0, "brown"

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    .line 410
    return-void
.end method

.method synthetic lambda$setupThemeListeners$31(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    const-string v1, "gone"

    invoke-direct {p0, v0, v1}, Lcm/aptoide/accountmanager/CreateStoreActivity;->handleThemeTick(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mLightblueTick:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 414
    const-string v0, "light-blue"

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    .line 415
    return-void
.end method

.method synthetic lambda$setupThemeListeners$32(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    const-string v1, "gone"

    invoke-direct {p0, v0, v1}, Lcm/aptoide/accountmanager/CreateStoreActivity;->handleThemeTick(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mDefaultTick:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 419
    const-string v0, "default"

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    .line 420
    return-void
.end method

.method synthetic lambda$setupThemeListeners$33(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    const-string v1, "gone"

    invoke-direct {p0, v0, v1}, Lcm/aptoide/accountmanager/CreateStoreActivity;->handleThemeTick(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mBlackTick:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 424
    const-string v0, "black"

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    .line 425
    return-void
.end method

.method synthetic lambda$setupThemeListeners$34(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    const-string v1, "gone"

    invoke-direct {p0, v0, v1}, Lcm/aptoide/accountmanager/CreateStoreActivity;->handleThemeTick(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mBlueGreyTick:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 429
    const-string v0, "blue-grey"

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    .line 430
    return-void
.end method

.method synthetic lambda$setupThemeListeners$35(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    const-string v1, "gone"

    invoke-direct {p0, v0, v1}, Lcm/aptoide/accountmanager/CreateStoreActivity;->handleThemeTick(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mDeepPurpleTick:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 434
    const-string v0, "deep-purple"

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    .line 435
    return-void
.end method

.method synthetic lambda$setupThemeListeners$36(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    const-string v1, "gone"

    invoke-direct {p0, v0, v1}, Lcm/aptoide/accountmanager/CreateStoreActivity;->handleThemeTick(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mLightGreenTick:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 439
    const-string v0, "light-green"

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    .line 440
    return-void
.end method

.method synthetic lambda$setupThemeListeners$37(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    const-string v1, "gone"

    invoke-direct {p0, v0, v1}, Lcm/aptoide/accountmanager/CreateStoreActivity;->handleThemeTick(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mGreyTick:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 444
    const-string v0, "grey"

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    .line 445
    return-void
.end method

.method loadImage(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 143
    invoke-static {p0}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mStoreAvatar:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcm/aptoide/pt/imageloader/ImageLoader;->loadWithCircleTransform(Landroid/net/Uri;Landroid/widget/ImageView;Z)Lcom/bumptech/glide/g/b/k;

    .line 144
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 661
    new-instance v1, Lcm/aptoide/pt/utils/FileUtils;

    invoke-direct {v1}, Lcm/aptoide/pt/utils/FileUtils;-><init>()V

    .line 662
    const/4 v0, 0x0

    .line 663
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    if-ne p2, v3, :cond_1

    .line 664
    sget-object v0, Lcm/aptoide/accountmanager/CreateStoreActivity;->photoAvatar:Ljava/lang/String;

    invoke-static {v0}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->createAvatarPhotoName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->getPhotoFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 665
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcm/aptoide/pt/utils/FileUtils;->getPathAlt(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeAvatarPath:Ljava/lang/String;

    .line 670
    :cond_0
    :goto_0
    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeAvatarPath:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->checkAvatarRequirements(Ljava/lang/String;Landroid/net/Uri;)V

    .line 671
    return-void

    .line 666
    :cond_1
    const/16 v2, 0x416

    if-ne p1, v2, :cond_0

    if-ne p2, v3, :cond_0

    .line 667
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 668
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcm/aptoide/pt/utils/FileUtils;->getPath(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeAvatarPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->getData()V

    .line 110
    invoke-super {p0, p1}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->getLayoutId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->setContentView(I)V

    .line 112
    new-instance v0, Lrx/j/b;

    invoke-direct {v0}, Lrx/j/b;-><init>()V

    iput-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mSubscriptions:Lrx/j/b;

    .line 113
    invoke-direct {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->bindViews()V

    .line 114
    invoke-direct {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->editViews()V

    .line 115
    invoke-direct {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->setupToolbar()V

    .line 116
    invoke-direct {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->setupListeners()V

    .line 117
    invoke-direct {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->setupThemeListeners()V

    .line 118
    return-void
.end method

.method public onCreateFail(I)V
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->content:Landroid/view/View;

    invoke-static {v0, p1}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;I)V

    .line 625
    return-void
.end method

.method public onCreateSuccess(Landroid/app/ProgressDialog;)V
    .locals 6

    .prologue
    .line 541
    sget v0, Lcm/aptoide/accountmanager/R$string;->create_store_store_created:I

    invoke-static {p0, v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/app/Activity;I)V

    .line 542
    iget v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->CREATE_STORE_REQUEST_CODE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 546
    invoke-direct {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->setStoreData()V

    .line 547
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mSubscriptions:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    invoke-interface {v1}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 548
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeName:Ljava/lang/String;

    iget-object v4, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    iget-object v5, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeAvatarPath:Ljava/lang/String;

    .line 547
    invoke-static {v1, v2, v3, v4, v5}, Lcm/aptoide/pt/dataprovider/ws/v7/SetStoreRequest;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SetStoreRequest;

    move-result-object v1

    .line 549
    invoke-virtual {v1}, Lcm/aptoide/pt/dataprovider/ws/v7/SetStoreRequest;->observe()Lrx/d;

    move-result-object v1

    const-wide/16 v2, 0x5a

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 550
    invoke-virtual {v1, v2, v3, v4}, Lrx/d;->c(JLjava/util/concurrent/TimeUnit;)Lrx/d;

    move-result-object v1

    invoke-static {p0, p1}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$25;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;Landroid/app/ProgressDialog;)Lrx/b/b;

    move-result-object v2

    invoke-static {p0, p1}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$26;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;Landroid/app/ProgressDialog;)Lrx/b/b;

    move-result-object v3

    .line 551
    invoke-virtual {v1, v2, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v1

    .line 547
    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    iget v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->CREATE_STORE_REQUEST_CODE:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->CREATE_STORE_REQUEST_CODE:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 606
    :cond_2
    invoke-direct {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->setStoreData()V

    .line 607
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->aptoideClientUUID:Lcm/aptoide/pt/interfaces/AptoideClientUUID;

    .line 608
    invoke-interface {v1}, Lcm/aptoide/pt/interfaces/AptoideClientUUID;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeName:Ljava/lang/String;

    iget-object v3, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->storeTheme:Ljava/lang/String;

    .line 607
    invoke-static {v0, v1, v2, v3}, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$27;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;Landroid/app/ProgressDialog;)Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;

    move-result-object v1

    invoke-static {p0, p1}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$28;->lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;Landroid/app/ProgressDialog;)Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;

    move-result-object v2

    .line 608
    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/SimpleSetStoreRequest;->execute(Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->onDestroy()V

    .line 134
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mSubscriptions:Lrx/j/b;

    invoke-virtual {v0}, Lrx/j/b;->a()V

    .line 135
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 140
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 675
    packed-switch p1, :pswitch_data_0

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 677
    :pswitch_0
    array-length v0, p3

    if-lez v0, :cond_0

    aget v0, p3, v1

    if-nez v0, :cond_0

    .line 678
    invoke-virtual {p0, v2}, Lcm/aptoide/accountmanager/CreateStoreActivity;->changePermissionValue(Z)V

    .line 679
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->callGallery()V

    goto :goto_0

    .line 685
    :pswitch_1
    array-length v0, p3

    if-lez v0, :cond_0

    aget v0, p3, v1

    if-nez v0, :cond_0

    .line 686
    invoke-virtual {p0, v2}, Lcm/aptoide/accountmanager/CreateStoreActivity;->changePermissionValue(Z)V

    .line 687
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/CreateStoreActivity;->dispatchTakePictureIntent(Landroid/content/Context;)V

    goto :goto_0

    .line 675
    :pswitch_data_0
    .packed-switch 0x7b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method showIconPropertiesError(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 147
    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity;->mSubscriptions:Lrx/j/b;

    sget v1, Lcm/aptoide/accountmanager/R$string;->image_requirements_error_popup_title:I

    .line 148
    invoke-virtual {p0, v1}, Lcm/aptoide/accountmanager/CreateStoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-static {p0, v1, p1}, Lcm/aptoide/pt/utils/GenericDialogs;->createGenericOkMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/d;

    move-result-object v1

    invoke-static {}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$1;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    invoke-static {}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$2;->lambdaFactory$()Lrx/b/b;

    move-result-object v3

    .line 149
    invoke-virtual {v1, v2, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v1

    .line 147
    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 152
    return-void
.end method
