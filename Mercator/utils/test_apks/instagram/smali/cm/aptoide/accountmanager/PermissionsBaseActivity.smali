.class public abstract Lcm/aptoide/accountmanager/PermissionsBaseActivity;
.super Lcm/aptoide/accountmanager/BaseActivity;
.source "PermissionsBaseActivity.java"


# static fields
.field static final CAMERA_PERMISSION_GIVEN:Ljava/lang/String; = "camera_permission_given"

.field static final CAMERA_PERMISSION_REQUESTED:Ljava/lang/String; = "camera_permission_requested"

.field protected static final CAMERA_REQUEST_CODE:I = 0x7c

.field protected static final CREATE_STORE_REQUEST_CODE:I = 0x1

.field static final GALLERY_CODE:I = 0x416

.field static final REQUEST_IMAGE_CAPTURE:I = 0x1

.field static final STORAGE_PERMISSION_GIVEN:Ljava/lang/String; = "storage_permission_given"

.field static final STORAGE_PERMISSION_REQUESTED:Ljava/lang/String; = "storage_permission_requested"

.field protected static final STORAGE_REQUEST_CODE:I = 0x7b

.field private static final TYPE_CAMERA:Ljava/lang/String; = "camera"

.field private static final TYPE_STORAGE:Ljava/lang/String; = "storage"

.field protected static final USER_PROFILE_CODE:I = 0x7d

.field protected static photoAvatar:Ljava/lang/String;


# instance fields
.field private TAG:Ljava/lang/String;

.field private avatar:Ljava/io/File;

.field private mSubscriptions:Lrx/j/b;

.field public result:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "aptoide_user_avatar.png"

    sput-object v0, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->photoAvatar:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcm/aptoide/accountmanager/BaseActivity;-><init>()V

    .line 47
    const-string v0, "STORAGE"

    iput-object v0, p0, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static checkAndAskPermission(Landroid/support/v7/a/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0x7c

    const/16 v5, 0x7b

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_6

    .line 105
    const-string v0, "storage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/content/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    invoke-static {p0, v0, v5}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 114
    const-string v0, "storage_permission_requested"

    .line 148
    :goto_0
    return-object v0

    .line 116
    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    invoke-static {p0, v0, v5}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 148
    :cond_1
    :goto_1
    const-string v0, ""

    goto :goto_0

    .line 120
    :cond_2
    const-string v0, "storage_permission_given"

    goto :goto_0

    .line 122
    :cond_3
    const-string v0, "camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    const-string v0, "android.permission.CAMERA"

    invoke-static {p0, v0}, Landroid/support/v4/content/b;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 125
    const-string v0, "android.permission.CAMERA"

    invoke-static {p0, v0}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 128
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.CAMERA"

    aput-object v1, v0, v2

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    invoke-static {p0, v0, v6}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 131
    const-string v0, "camera_permission_requested"

    goto :goto_0

    .line 133
    :cond_4
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.CAMERA"

    aput-object v1, v0, v2

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    invoke-static {p0, v0, v6}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1

    .line 138
    :cond_5
    const-string v0, "camera_permission_given"

    goto :goto_0

    .line 142
    :cond_6
    const-string v0, "camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 143
    const-string v0, "camera_permission_given"

    goto :goto_0

    .line 144
    :cond_7
    const-string v0, "storage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    const-string v0, "storage_permission_given"

    goto :goto_0
.end method

.method protected static createAvatarPhotoName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 203
    .line 204
    return-object p0
.end method

.method private getErrorsMessage(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    sget v0, Lcm/aptoide/accountmanager/R$string;->image_requirements_popup_message:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;

    .line 232
    sget-object v3, Lcm/aptoide/accountmanager/PermissionsBaseActivity$1;->$SwitchMap$cm$aptoide$pt$utils$AptoideUtils$IconSizeU$ImageSizeErrors:[I

    invoke-virtual {v0}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU$ImageSizeErrors;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 234
    :pswitch_0
    sget v0, Lcm/aptoide/accountmanager/R$string;->image_requirements_error_min_height:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 237
    :pswitch_1
    sget v0, Lcm/aptoide/accountmanager/R$string;->image_requirements_error_max_height:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 240
    :pswitch_2
    sget v0, Lcm/aptoide/accountmanager/R$string;->image_requirements_error_min_width:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 243
    :pswitch_3
    sget v0, Lcm/aptoide/accountmanager/R$string;->image_requirements_error_max_width:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 246
    :pswitch_4
    sget v0, Lcm/aptoide/accountmanager/R$string;->image_requirements_error_max_file_size:I

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 252
    :cond_0
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 253
    if-lez v0, :cond_1

    .line 254
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 257
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 232
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic lambda$chooseAvatarSource$2(Landroid/app/Dialog;Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 81
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$chooseAvatarSource$3(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 83
    return-void
.end method

.method private setFileName()V
    .locals 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->getActivityTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Create User Profile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    const-string v0, "aptoide_user_avatar.jpg"

    sput-object v0, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->photoAvatar:Ljava/lang/String;

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->getActivityTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Create Your Store"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    const-string v0, "aptoide_store_avatar.jpg"

    sput-object v0, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->photoAvatar:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public callGallery()V
    .locals 3

    .prologue
    .line 175
    iget-boolean v0, p0, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->result:Z

    if-eqz v0, :cond_0

    .line 176
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 177
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 178
    const/16 v1, 0x416

    invoke-virtual {p0, v0, v1}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 181
    :cond_0
    return-void
.end method

.method public callPermissionAndAction(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 88
    .line 89
    invoke-static {p0, p1}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->checkAndAskPermission(Landroid/support/v7/a/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 100
    :goto_1
    return-void

    .line 90
    :sswitch_0
    const-string v3, "camera_permission_given"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "storage_permission_given"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 92
    :pswitch_0
    invoke-virtual {p0, v1}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->changePermissionValue(Z)V

    .line 93
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->dispatchTakePictureIntent(Landroid/content/Context;)V

    goto :goto_1

    .line 96
    :pswitch_1
    invoke-virtual {p0, v1}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->changePermissionValue(Z)V

    .line 97
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->callGallery()V

    goto :goto_1

    .line 90
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4adb0919 -> :sswitch_0
        0xede4e51 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public changePermissionValue(Z)V
    .locals 0

    .prologue
    .line 152
    iput-boolean p1, p0, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->result:Z

    .line 153
    return-void
.end method

.method protected checkAvatarRequirements(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 6

    .prologue
    .line 208
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcm/aptoide/accountmanager/R$integer;->min_avatar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 212
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcm/aptoide/accountmanager/R$integer;->max_avatar_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 213
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcm/aptoide/accountmanager/R$integer;->min_avatar_width:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 214
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcm/aptoide/accountmanager/R$integer;->max_avatar_width:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 215
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcm/aptoide/accountmanager/R$integer;->max_avatar_Size:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    move-object v0, p1

    .line 210
    invoke-static/range {v0 .. v5}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->checkIconSizeProperties(Ljava/lang/String;IIIII)Ljava/util/List;

    move-result-object v0

    .line 216
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    invoke-virtual {p0, p2}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->loadImage(Landroid/net/Uri;)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    invoke-direct {p0, v0}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->getErrorsMessage(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->showIconPropertiesError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public chooseAvatarSource()V
    .locals 5

    .prologue
    .line 70
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 71
    sget v1, Lcm/aptoide/accountmanager/R$layout;->dialog_choose_avatar_layout:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 72
    iget-object v1, p0, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->mSubscriptions:Lrx/j/b;

    sget v2, Lcm/aptoide/accountmanager/R$id;->button_camera:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v2

    invoke-static {p0, v0}, Lcm/aptoide/accountmanager/PermissionsBaseActivity$$Lambda$1;->lambdaFactory$(Lcm/aptoide/accountmanager/PermissionsBaseActivity;Landroid/app/Dialog;)Lrx/b/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/j/b;->a(Lrx/k;)V

    .line 76
    iget-object v1, p0, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->mSubscriptions:Lrx/j/b;

    sget v2, Lcm/aptoide/accountmanager/R$id;->button_gallery:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v2

    invoke-static {p0, v0}, Lcm/aptoide/accountmanager/PermissionsBaseActivity$$Lambda$2;->lambdaFactory$(Lcm/aptoide/accountmanager/PermissionsBaseActivity;Landroid/app/Dialog;)Lrx/b/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/j/b;->a(Lrx/k;)V

    .line 80
    iget-object v1, p0, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->mSubscriptions:Lrx/j/b;

    sget v2, Lcm/aptoide/accountmanager/R$id;->cancel:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v2

    invoke-static {v0}, Lcm/aptoide/accountmanager/PermissionsBaseActivity$$Lambda$3;->lambdaFactory$(Landroid/app/Dialog;)Lrx/b/b;

    move-result-object v3

    invoke-static {}, Lcm/aptoide/accountmanager/PermissionsBaseActivity$$Lambda$4;->lambdaFactory$()Lrx/b/b;

    move-result-object v4

    .line 81
    invoke-virtual {v2, v3, v4}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v2

    .line 80
    invoke-virtual {v1, v2}, Lrx/j/b;->a(Lrx/k;)V

    .line 84
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 85
    return-void
.end method

.method public dispatchTakePictureIntent(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 156
    iget-boolean v0, p0, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->result:Z

    if-eqz v0, :cond_0

    .line 157
    invoke-direct {p0}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->setFileName()V

    .line 158
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 160
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getConfiguration()Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;

    move-result-object v2

    invoke-interface {v2}, Lcm/aptoide/pt/preferences/AptoidePreferencesConfiguration;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".provider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->photoAvatar:Ljava/lang/String;

    .line 163
    invoke-static {v3}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->createAvatarPhotoName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 162
    invoke-virtual {p0, v3}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->getPhotoFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 163
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-static {p1, v1, v2}, Landroid/support/v4/content/FileProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 164
    const-string v2, "output"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 169
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 172
    :cond_0
    return-void

    .line 166
    :cond_1
    const-string v1, "output"

    sget-object v2, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->photoAvatar:Ljava/lang/String;

    .line 167
    invoke-static {v2}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->createAvatarPhotoName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->getPhotoFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 166
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected getActivityTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method getLayoutId()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public getPhotoFileUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 192
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".aptoide/user_avatar"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    iget-object v1, p0, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->TAG:Ljava/lang/String;

    const-string v2, "Failed to create directory"

    invoke-static {v1, v2}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_0
    iput-object v0, p0, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->avatar:Ljava/io/File;

    .line 198
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$chooseAvatarSource$0(Landroid/app/Dialog;Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 73
    const-string v0, "camera"

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->callPermissionAndAction(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 75
    return-void
.end method

.method synthetic lambda$chooseAvatarSource$1(Landroid/app/Dialog;Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 77
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->callPermissionAndAction(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 79
    return-void
.end method

.method abstract loadImage(Landroid/net/Uri;)V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcm/aptoide/accountmanager/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    new-instance v0, Lrx/j/b;

    invoke-direct {v0}, Lrx/j/b;-><init>()V

    iput-object v0, p0, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->mSubscriptions:Lrx/j/b;

    .line 54
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lcm/aptoide/accountmanager/BaseActivity;->onDestroy()V

    .line 66
    iget-object v0, p0, Lcm/aptoide/accountmanager/PermissionsBaseActivity;->mSubscriptions:Lrx/j/b;

    invoke-virtual {v0}, Lrx/j/b;->a()V

    .line 67
    return-void
.end method

.method abstract showIconPropertiesError(Ljava/lang/String;)V
.end method
